/**
 * 新建菜单
 * Created by wangjianchao1 on 2017/4/13.
 */

$(function () {

    $('#addMenuForm').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            name: {
                message: '用户名验证失败',
                validators: {
                    notEmpty: {
                        message: '用户名不能为空'
                    }
                }
            },
            code: {
                validators: {
                    notEmpty: {
                        message: '用户名不能为空'
                    }
                }
            }
        }
    }).on('success.form.bv', function(e, data) {
        // Prevent form submission
        e.preventDefault();

        // Get the form instance
        var $form = $(e.target);

        // Get the BootstrapValidator instance
        var bv = $form.data('bootstrapValidator');

        // Use Ajax to submit form data
        $.post($form.attr('action'), $form.serialize(), function(result) {
            // ... Process the result ...
        }, 'json');
    });;
    
    

 
    // $('#btnCancel').click(function () {
    //     if (index) {
    //         parent.layer.close(index);
    //     } else {
    //         window.close();
    //     }
    // });
});
