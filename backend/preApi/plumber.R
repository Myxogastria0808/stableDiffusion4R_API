library(plumber)


#参考: https://www.rplumber.io/articles/annotations.html
# Title
#* @apiTitle Plumber stableDiffusion4R API
# Description
#* @apiDescription Plumber stableDiffusion4R API
# TOS link
#* @apiTOS
# Contact object
#* @apiContact list(name = "Skume", url = "https://kumes.github.io/skume-Biography/skume-Biography.html", email = "satoshi.kume@a.riken.jp")
# License object
#* @apiLicense list(name = "Apache 2.0", url = "https://www.apache.org/licenses/LICENSE-2.0.html")
# Version
#* @apiVersion 0.0.1
# Tag Description
#* @apiTag stableDiffusion4R "Plumber stableDiffusion4R API"


#* @filter cors
cors <- function(req, res) {
  res$setHeader("Access-Control-Allow-Origin", "http://localhost:3000")
  if (req$REQUEST_METHOD == "OPTIONS") {
    res$setHeader("Access-Control-Allow-Methods", "GET")
    res$setHeader(
      "Access-Control-Allow-Headers",
      req$HTTP_ACCESS_CONTROL_REQUEST_HEADERS
    )
    res$status <- 200
    return(list())
  } else {
    plumber::forward()
  }
}

#* 本番のテスト用エンドポイント
#* @param prompt プロンプトを入力してください。
#* @get /stableDiffusion4R/<prompt>
function(prompt) {
  result <- list(prompt=prompt, url=c('https://yukiosada.work/CG-Animation.webp'))
  return(result)
}

#* @param prompt プロンプトを入力してください。
#* @get /modelA/<prompt>
function(prompt) {
  result <- list(prompt=prompt, url=c('https://yukiosada.work/CG-Animation.webp'))
  return(result)
}

#* @param prompt プロンプトを入力してください。
#* @get /modelB/<prompt>
function(prompt) {
  result <- list(prompt=prompt, url=c('https://yukiosada.work/CG-Animation.webp'))
  return(result)
}

#* @param prompt プロンプトを入力してください。
#* @get /modelC/<prompt>
function(prompt) {
  result <- list(prompt=prompt, url=c('https://yukiosada.work/CG-Animation.webp'))
  return(result)
}
