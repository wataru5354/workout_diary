document.addEventListener('DOMContentLoaded',function(){
  const diaryForm = document.getElementById('new_diary');
  const previewList = document.getElementById('previews');
  if (!diaryForm) return null;
  
  
  const fileField = document.querySelector('input[type="file"][name="diary[image]"]');
  fileField.addEventListener('change',function(e){
    const alreadyPreview = document.querySelector('.preview');
    if(alreadyPreview){
      alreadyPreview.remove();
    };

    const file = e.target.files[0];
    console.log(e.target.files[0]);
    const blob = window.URL.createObjectURL(file);
    const isVideo = file.type.match(/^video/);
    const previewWrapper = document.createElement('div');
    previewWrapper.setAttribute('class','preview');
    if (isVideo){
      const previewVideo = document.createElement('video');
      previewVideo.setAttribute('class','preview-video d-block mx-auto');
      previewVideo.setAttribute('src',blob);
      previewVideo.setAttribute('controls',true);
      previewWrapper.appendChild(previewVideo);
      previewList.appendChild(previewWrapper);
    }else{
    const previewImage = document.createElement('img');
    previewImage.setAttribute('class','preview-image d-block mx-auto');
    previewImage.setAttribute('src',blob);
    previewWrapper.appendChild(previewImage);
    previewList.appendChild(previewWrapper);
    }
  });
});