defmodule Streaming do

  def decompose() do
    source ="rtmp://media.evercam.io:1935/live/i94B7mV5ZDf6HgXdWxqrEGD4uolWdYvL_ARPEDnGCCgPlJP0GY_HlrklREioDF2cozPLnJxLITtX\
    KY62QCTbgQsHa5-Tfo_SEHeFhZCfhjnIQEtoWhLEa3bEQ720weLiQKtyUnzdYofZcMph8IwHhQ==?camera_id=abcdrumcondra"
    output="rtmp://a.rtmp.youtube.com/live2/rwkw-s4ky-rjws-405c"
    command= "-f lavfi -i anullsrc -i  #{source} -tune zerolatency -vcodec libx264 -pix_fmt + -c:v copy -c:a aac   -strict experimental -f flv #{output}"
    commandlist= String.split("#{command}")

  end

  def stream() do
    source ="rtmp://media.evercam.io:1935/live/i94B7mV5ZDf6HgXdWxqrEGD4uolWdYvL_ARPEDnGCCgPlJP0GY_HlrklREioDF2cozPLnJxLITtXKY62QCTbgQsHa5-Tfo_SEHeFhZCfhjnIQEtoWhLEa3bEQ720weLiQKtyUnzdYofZcMph8IwHhQ==?camera_id=abcdrumcondra"
    output="rtmp://a.rtmp.youtube.com/live2/rwkw-s4ky-rjws-405c"
    command= "-f lavfi -i anullsrc -i  #{source} -tune zerolatency -vcodec libx264 -pix_fmt + -c:v copy -c:a aac   -strict experimental -f flv #{output}"
    commandlist= String.split("#{command}")

    System.cmd("ffmpeg",  List.flatten(commandlist)   )
  end
  def main(args) do
    stream()
  end

end
