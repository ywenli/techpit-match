$(document).on("change", "#file_photo", function(e) {
  var reader
  // ファイルの有無を判定
  if (e.target.files.length) {
    reader = new FileReader;
    // ファイルの読み込みが成功した時に発生するイベント
    reader.onload = function(e) {
      var userThumbnail;
      userThumbnail = document.getElementById('thumbnail');
      $("#userImgPreview").addClass("is-active");
      // プレビュー画像を表示するためにimgタグのsrc属性にe.target.resultで取得したファイル名を設定
      userThumbnail.setAttribute('src', e.target.result);
    };
    return reader.readAsDataURL(e.target.files[0]);
  }
});