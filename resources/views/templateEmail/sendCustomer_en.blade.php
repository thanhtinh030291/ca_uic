@extends('templateEmail.main')
@section('content')
  <table role="presentation" border="0" cellpadding="0" cellspacing="0" >
    <tr>
      <td>&nbsp;</td>
      <td>
        <div>

          <!-- START CENTERED WHITE CONTAINER -->
          <table role="presentation">

            <!-- START MAIN CONTENT AREA -->
            <tr>
              <td>
                <table role="presentation" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td>
                      <p>Dear valued customer: {{$data['HBS_CL_CLAIM']->MemberNameCap}}</p>
                      <p>We would like to send you: "{{$data['name_lette']}}" . </p>
                      <p>You please refer the attachment for further information. </p>
                      <p>thanks.</p>

                      <p>Kindly do not reply this email address directly. If you have any inquiries, please feel free contact us via : <span style="color:blue">cskh.uic@pacificcross.com.vn</span><p>
                      <p> Thanks & Best Regards,</p>
                    </td>
                  </tr>
                </table>
              </td>
            </tr>

          <!-- END MAIN CONTENT AREA -->
          </table>
        </div>
      </td>
      <td>&nbsp;</td>
    </tr>
  </table>
@endsection
@section('old_msg')
    {!! data_get($data,'old_msg') !!}
@endsection
