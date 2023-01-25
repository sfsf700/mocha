document.addEventListener('DOMContentLoaded', function() {
  const postForm = document.getElementById('img-select');
  const previewList = document.getElementById('img-preview');
  if (!postForm) return null;
  console.log("img_previewが読み込まれました");

  const fileField = document.querySelector('input[type="file"][name="image"]');
  // input要素で値の変化が起きた際に呼び出される関数
  fileField.addEventListener('change', function(e){

    const alreadyPreview = document.querySelector('.preview');
    if (alreadyPreview) {
      alreadyPreview.remove();
    };

    console.log("input要素で値の変化が起きました");
    console.log(e.target.files[0]);
    const file = e.target.files[0];
    const blob = window.URL.createObjectURL(file);
    console.log(blob);
    // プレビューするためのdiv要素の生成
    const previewWrapper = document.createElement('div');
    previewWrapper.setAttribute('class', 'preview');
    const previewImage = document.createElement('img');
    previewImage.setAttribute('class', 'preview-image');
    previewImage.setAttribute('src', blob);
    previewWrapper.appendChild(previewImage);
    previewList.appendChild(previewWrapper);
  });
});