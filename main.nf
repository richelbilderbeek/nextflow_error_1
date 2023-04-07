process check_spelling {

  input:
  path tex_filename

  output:
  path "spellcheck_result.txt"

  shell:
  '''
  cat !{tex_filename} > "spellcheck_result.txt"
  '''
}

workflow {
  def tex_ch = Channel.fromPath("article.tex")

  check_spelling(tex_ch).view()
}
