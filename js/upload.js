$(document).ready(function () {
    //上传图片
    $('#image_upload').uploadify({
        'swf': '../js/uploadify/uploadify.swf',
        'removeTimeout': 0,
        'fileSizeLimit': '100MB',
        'uploader': strUrl,
        'buttonText': '上传图片',
        'fileTypeDesc': 'Image Files',
        'fileTypeExts': '*.gif; *.jpg; *.png',
        'formData': {
            'targetFolder': $("#" + baseUrl).val().toString()
        },
        'onUploadSuccess': function (file, data, response) {
            var d = eval("(" + data + ")");
            if ($("#" + imagefilename).val() != "" && isOneImage != 1) {
                $("#" + imagefilename).val($("#" + imagefilename).val().concat("|", d.SaveName));
            } else {
                $("#" + imagefilename).val(d.SaveName);
            };
            var imageItem = "<div><a href='".concat(rootpath,
                                                    $("#" + baseUrl).val().toString().concat("/",d.SaveName),
                                                    "' rel='lightbox[1]'><img src='",
                                                    rootpath,
                                                    $("#" + baseUrl).val().toString().concat("/thumbnail/", d.SaveName),
                                                    "'/></a><input type='button' value='删除' onclick='deleteImage(\"",
                                                    d.SaveName,
                                                    "\",this);'/></div>");
            if (isOneImage != 1) $("#uploadedImages").append(imageItem);
            else $("#uploadedImages").html(imageItem);
        },
        'onUploadError': function (file, errorCode, errorMsg, errorString) {
            alert('The file ' + file.name + ' could not be uploaded: ' + errorString);
        }
    });
});

function deleteImage(imageName, btn) {
    $("#" + imagefilename).val($("#" + imagefilename).val().replace(imageName, ''));
    $(btn).parent().remove();
}