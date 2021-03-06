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
    
    'apiKey' => "AIzaSyBTHTKBDMg9feCwbB5Mp9ceiR-kR3QFL3M",
    'authDomain' =>  "pacific-cross.firebaseapp.com",
    'projectId' =>  "pacific-cross",
    'storageBucket'=> "pacific-cross.appspot.com",
    'messagingSenderId' => "501542859634",
    'appId' =>  "1:501542859634:web:0274ffd7f050783f55a3eb",
    'measurementId' => "G-W2HN0MDWL3",
    'SERVER_API_KEY' =>'AAAAdMZIs3I:APA91bHdAWUe3CpIBaylmF_Wjpti56WBHuLLSml82c77D4sGr9rcupGgXtpCBxueXki88vO1BUaNk8cuJT9g6qH91fFtSLzvxh5dZstdLzi-94dSSDyqA4jebAB8uuYXVAooIwf9Dt7Y',

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
        0 => 'M???c ?????nh',
        1 => 'Y??u C???u H??? tr??? MD',
        2 => '???? Gi???i Quy???t'
    ],

    'notifiRoleMD' => 'Medical',
    'status_mantic_value' => [
        'accepted' => 81,
        'partiallyaccepted' =>82,
        'declined' => 83,
    ],
    'payment_method' =>[
        'TT' => 'Chuy???n kho???n qua ng??n h??ng',
        'CA' => 'Nh???n ti???n m???t t???i ng??n h??ng',
        'CQ' => 'Nh???n ti???n m???t t???i v??n ph??ng',
        'PP' => '????ng ph?? b???o hi???m cho h???p ?????ng'
    ],
    'debt_type' =>[
        1 => 'n??? ???????c ????i l???i',
        2 => 'n??? nh??ng ???? c???n tr??? qua Claim kh??c',
        3 => 'n??? nh??ng kh??ch h??ng ???? g???i tr??? l???i',
        4 => 'n??? kh??ng ???????c ????i l???i',
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
        'request' => '??ang ?????i x??c nh???n',
        'accept'  => '???? ???????c x??c nh???n',
        'reject'  => '???? b??? t??? ch???i',
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
        0 => "Accepted: GOP acceptance letter is attached (Ch???p nh???n: Th?? b???o l??nh vi???n ph?? ???????c g???i ????nh k??m)",
        1 => "Client can Pay and Claim (Kh??ch h??ng t??? thanh to??n v?? g???i h??? s?? y??u c???u b???i th?????ng cho c??ng ty)",
        2 => "Treatment not Covered (??i???u tr??? kh??ng ???????c b???o hi???m)"
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
        'original_invoice' => 'H??a ????n g??c',
        'e_invoice' => 'H??a ????n ??i???n t???',
        'converted_invoice' => 'H??a ????n ???? chuy???n ?????i',
    ],

    'benhead' => [
        'vis_yr' => "ng??y/n??m",
        'vis_day' => "l???n/m???i Ng??y",
        'amt_vis' => "?????ng/m???i l???n th??m kh??m",
        'amt_yr' => "?????ng/n??m",
        'amt_dis_yr' => "?????ng/m???i b???nh/n??m",
        'amt_life' => "?????ng/tr???n ?????i",
        'day_dis_yr' => "ng??y/m???i b???nh/n??m",
        'amt_day' => "?????ng/ng??y",
        'amt_dis_vis' => "?????ng/m???i b???nh/m???i l???n",
        'amt_dis_life' => "?????ng/m???i b???nh/tr???n ?????i",
    ],

    'benhead_en' => [
        'vis_yr' => "day/year",
        'vis_day' => "time/everyday",
        'amt_vis' => "dong/visit",
        'amt_yr' => "dong/year",
        'amt_dis_yr' => "dong/diagnose/year",
        'amt_life' => "dong/life",
        'day_dis_yr' => "day/diagnose/year",
        'amt_day' => "dong/day",
        'amt_dis_vis' => "dong/diagnose/time",
        'amt_dis_life' => "dong/diagnose/life",
    ]

];