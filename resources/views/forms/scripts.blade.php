<!-- Jquery Validate -->
<script src="{{ asset('js/validate/jquery.validate.min.js') }}"></script>

{{ $js_scripts ?? '' }}

<script type="text/javascript">
    $(document).ready(function(){
    	$(".form-control").attr('autocomplete', 'off');

        // $(".form-horizontal select").select2({ width: 'resolve' }); 
        $(".form-horizontal select").select2({
            placeholder: "Select One",
            allowClear: true
        }); 

        var msg;
        var dynamicErrorMsg = function () { return msg; }


        jQuery.validator.addMethod("lessThan", function(value, element, param) {

            var start = value;
            var finish = $( param[0] ).val();

            var s = start.split("-");
            var f = finish.split("-");

            // console.log("length is " + f.length);

            if(f.length < 3){
                return true;
            }
            else{
                var start_date = new Date(s[0], s[1], s[2]);
                var finish_date = new Date(f[0], f[1], f[2]);

                msg =  param[1] + " cannot be set to a date greater than " + param[2];

                return this.optional(element) || (start_date <= finish_date);

            }

            /*if (!/Invalid|NaN/.test(new Date(value))) {
                return new Date(value) > new Date($(params).val());
            }

            return isNaN(value) && isNaN($(params).val())
                || (Number(value) > Number($(params).val()));*/

        }, dynamicErrorMsg);

        jQuery.validator.addMethod("greaterThan", function(value, element, param) {

            var finish = value;
            var start = $( param[0] ).val();

            var s = start.split("-");
            var f = finish.split("-");

            if(f.length < 3){
                return true;
            }
            else{
                var start_date = new Date(s[0], s[1], s[2]);
                var finish_date = new Date(f[0], f[1], f[2]);

                msg =  param[1] + " cannot be set to a date less than " + param[2];

                return this.optional(element) || (start_date <= finish_date);

            }
        }, dynamicErrorMsg);

        jQuery.validator.addMethod("lessThanTwo", function(value, element, param) {

            var start = value;
            var finish = $( param[0] ).val();

            var s = start.split("-");
            var f = finish.split("-");

            // console.log("length is " + f.length);

            if(f.length < 3){
                return true;
            }
            else{
                var start_date = new Date(s[0], s[1], s[2]);
                var finish_date = new Date(f[0], f[1], f[2]);

                msg =  param[1] + " cannot be set to a date greater than " + param[2];

                return this.optional(element) || (start_date <= finish_date);

            }

            /*if (!/Invalid|NaN/.test(new Date(value))) {
                return new Date(value) > new Date($(params).val());
            }

            return isNaN(value) && isNaN($(params).val())
                || (Number(value) > Number($(params).val()));*/

        }, dynamicErrorMsg);

        $(".form-horizontal").validate({
            errorPlacement: function (error, element)
            {
                element.before(error);
            }
            {{ $val_rules ?? '' }}
        });
        
        {{ $slot }}

    });

</script>
