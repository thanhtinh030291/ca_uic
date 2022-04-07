<?php
return[
    'appName' => 'Claim Assistant',
    'appEmail' => env('MAIL_FROM_ADDRESS', 'admin@pacificcross.com.vn'),
    'appLogo'     => "/images/logo.png",
    'formClaimUpload'   => '/public/formClaim/',
    'formClaimStorage'  => '/storage/formClaim/',
    'sortedClaimUpload'   => '/public/sortedClaim/',
    'sotedClaimStorage'  => '/storage/sortedClaim/',
    'company' => 'uic',

    'avantarUpload' => '/public/avantar/',
    'avantarStorage' => '/storage/avantar/',
    'signarureUpload' => '/public/signarure/',
    'signarureStorage' => '/storage/signarure/',
    'PUSHER_APP_KEY' => env('PUSHER_APP_KEY'),
    'PUSHER_APP_SECRET' => env('PUSHER_APP_SECRET'),
    'PUSHER_APP_ID' => env('PUSHER_APP_ID'),
    'PUSHER_APP_CLUSTER' => env('PUSHER_APP_CLUSTER'),
    'VAPID_PUBLIC_KEY' => env('VAPID_PUBLIC_KEY'),
    'mount_disk_hbs' => 'uicprod_hbs_report',
    'mount_dlvn' => "http://192.168.0.235/uicprod_hbs_report/",
    
    'attachUpload'   => '/public/attachEmail/',
    
    'paginator' => [
        'itemPerPage' => '10',
    ],
    'limit_list' => [
        10 => 10,
        20 => 20,
        30 => 30,
        40 => 40,
        50 => 50,
    ],
    'field_select' => [
        'content' => 'Content',
        'amount' => 'Amount',
    ],
    'percentSelect' => 70,

    'statusExport' => [
        'new' => 0,
        'edit' => 1,
        'note_save' => 2,
    ],
    'statusExportText' => [
        '0' => "New",
        '1' => 'Edit',
        '2' => 'Note Save',
    ],
    'link_mfile' => '192.168.0.235/mfile/public/api/',
    'account_mfile' => 'admin@pacificcross.com.vn',
    'pass_mfile' => '123456',
    'mode_mfile' => 'uic',

    
    'token_mantic' => env("token_mantic",""),
    'url_mantic' => env("url_mantic",""),
    'url_mantic_api' => env("url_mantic_api",""),
    'url_cps' => env("url_cps",""),
    'api_cps' => env("api_cps",""),
    'client_id' => env("client_id",""),
    'client_secret' => env("client_secret",""),
    'url_hbs' => env("url_hbs",""),
    'url_mobile_api'  => env("url_mobile_api",""),

    'grant_type' => 'client_credentials',
    'url_query_online' => 'https://pcvwebservice.pacificcross.com.vn/bluecross/query_rest.php?id=',
    'claim_result' => [
        1 => 'FULLY PAID' ,
        2 => 'PARTIALLY PAID',
        3 => 'DECLINED' 
    ],
    'statusWorksheet' => [
        0 => 'Mặc Định',
        1 => 'Yêu Cầu Hỗ trợ MD',
        2 => 'Đã Giải Quyết'
    ],

    'notifiRoleMD' => 'Medical',
    'status_mantic_value' => [
        'accepted' => 81,
        'partiallyaccepted' =>82,
        'declined' => 83,
    ],
    'payment_method' =>[
        'TT' => 'Chuyển khoản qua ngân hàng',
        'CA' => 'Nhận tiền mặt tại ngân hàng',
        'CQ' => 'Nhận tiền mặt tại văn phòng',
        'PP' => 'Đóng phí bảo hiểm cho hợp đồng'
    ],
    'debt_type' =>[
        1 => 'nợ được đòi lại',
        2 => 'nợ nhưng đã cấn trừ qua Claim khác',
        3 => 'nợ nhưng khách hàng đã gửi trả lại',
        4 => 'nợ không được đòi lại',
    ],
    'tranfer_status' => [
        10	=> "DELETED",
        20	=> "NEW",
        30	=> "LEADER APPROVAL",
        50	=> "LEADER REJECTED",
        60	=> "MANAGER APPROVAL",
        80	=> "MANAGER REJECTED",
        90	=> "DIRECTOR APPROVAL",
        110	=> "DIRECTOR REJECTED",
        140	=> "DLVN CANCEL",
        145	=> "DLVN PAYPREM",
        150	=> "APPROVED",
        160	=> "SHEET",
        165	=> "SHEET PAYPREM",
        170	=> "SHEET DLVN CANCEL",
        175	=> "SHEET DLVN PAYPREM",
        180	=> "TRANSFERRING",
        185	=> "TRANSFERRING PAYPREM",
        190	=> "TRANSFERRING DLVN CANCEL",
        195	=> "TRANSFERRING DLVN PAYPREM",
        200	=> "TRANSFERRED",
        205	=> "TRANSFERRED PAYPREM",
        210	=> "TRANSFERRED DLVN CANCEL",
        215	=> "TRANSFERRED DLVN PAYPREM",
        216	=> "RETURNED TO CLAIM",
        220	=> "DLVN CLOSED",
    ],
    'claim_type'=>[
        'M' => '(Member)',
        'P' => '(GOP)',
    ],
    'status_request_gop_pay' => [
        'request' => 'Đang đợi xác nhận',
        'accept'  => 'Đã được xác nhận',
        'reject'  => 'Đã bị từ chối',
    ],
    'category_bug' => [
        'Claim' => 15,
        'MCP_Claim' => 16,
        'CS_Claim' => 17
    ],
    'not_provider' => [
        '2095143'
    ],
    'gop_type' =>
    [
        0 => "Accepted: GOP acceptance letter is attached (Chấp nhận: Thư bảo lãnh viện phí được gửi đính kèm)",
        1 => "Client can Pay and Claim (Khách hàng tự thanh toán và gửi hồ sơ yêu cầu bồi thường cho công ty)",
        2 => "Treatment not Covered (Điều trị không được bảo hiểm)"
    ],

    'status_mantic' =>[
        10 => 'new' ,
        11 => 'reopen',
        12 => 'mcp_new', 
        13 => 'new_comment',
        14 => 'pending',
        16 => 'ask_pocy_status',
        20 => 'feedback',
        21 => 'gop_request',
        22 => 'gop_initial_approval',
        23 => 'gop_wait_doc',
        30 => 'acknowledged',
        40 => 'confirmed',
        50 => 'assigned',
        60 => 'open',
        65 => 'mcp_info_request',
        66 => 'mcp_add_doc',
        67 => 'mcp_doc_sufficient',
        68 => 'mcp_hc_received',
        69 => 'mcp_hc_request',
        70 => 'inforequest',
        71 => 'inforequest_review',
        72 => 'inforequest_revised',
        73 => 'inforeceived',
        74 => 'investrequest',
        75 => 'askpartner',
        78 => 'readytosend',
        79 => 'readyforprocess',
        80 => 'resolved',
        81 => 'accepted',
        82 => 'partiallyaccepted',
        83 => 'declined',
        84 => 'answered',
        90 => 'closed',
        91 => 'mcp_closed'
    ],
    'status_mantic_value' => [
        'accepted' => 81,
        'partiallyaccepted' =>82,
        'declined' => 83,
        'inforequest' => 70,
    ],
    'invoice_type' => [
        'original_invoice' => 'Hóa đơn góc',
        'e_invoice' => 'Hóa đơn điện tử',
        'converted_invoice' => 'Hóa đơn đã chuyển đổi',
    ],

    'benhead' => [
        'vis_yr' => "Ngày/Năm",
        'vis_day' => "Lần/Mỗi Ngày",
        'amt_vis' => "Đồng/Mỗi Lần Thăm Khám",
        'amt_yr' => "Đồng/Năm",
        'amt_dis_yr' => "Đồng/Mỗi Bệnh/Năm",
        'amt_life' => "Đồng/Trọn Đời",
        'day_dis_yr' => "Ngày/Mỗi Bệnh/Năm",
        'amt_day' => "Đồng/Ngày",
        'amt_dis_vis' => "Đồng/Mỗi Bệnh/Mỗi Lần",
        'amt_dis_life' => "Đồng/Mỗi Bệnh/Trọn Đời",
    ],

    'benhead_en' => [
        'vis_yr' => "Day/Year",
        'vis_day' => "Time/Everyday",
        'amt_vis' => "VND/Visit",
        'amt_yr' => "VND/Year",
        'amt_dis_yr' => "VND/Diagnose/Year",
        'amt_life' => "VND/Life",
        'day_dis_yr' => "Day/Diagnose/Year",
        'amt_day' => "VND/Day",
        'amt_dis_vis' => "VND/Diagnose/Time",
        'amt_dis_life' => "VND/Diagnose/Life",
    ]

];