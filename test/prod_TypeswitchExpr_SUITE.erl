-module('prod_TypeswitchExpr_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['typeswitchhc1'/1]).
-export(['typeswitchhc2'/1]).
-export(['typeswitchhc3'/1]).
-export(['typeswitchhc4'/1]).
-export(['typeswitchhc5'/1]).
-export(['typeswitchhc6'/1]).
-export(['typeswitchhc7'/1]).
-export(['typeswitchhc8'/1]).
-export(['typeswitchhc9'/1]).
-export(['typeswitchhc10'/1]).
-export(['typeswitchhc11'/1]).
-export(['typeswitchhc12'/1]).
-export(['typeswitchhc13'/1]).
-export(['typeswitchhc14'/1]).
-export(['typeswitchhc15'/1]).
-export(['typeswitchhc16'/1]).
-export(['typeswitchhc17'/1]).
-export(['typeswitchhc18'/1]).
-export(['typeswitchhc19'/1]).
-export(['typeswitchhc20'/1]).
-export(['typeswitchhc21'/1]).
-export(['typeswitchhc22'/1]).
-export(['typeswitchhc23'/1]).
-export(['typeswitchhc24'/1]).
-export(['typeswitchhc25'/1]).
-export(['K-sequenceExprTypeswitch-1'/1]).
-export(['K-sequenceExprTypeswitch-2'/1]).
-export(['K-sequenceExprTypeswitch-3'/1]).
-export(['K-sequenceExprTypeswitch-4'/1]).
-export(['K-sequenceExprTypeswitch-5'/1]).
-export(['K-sequenceExprTypeswitch-6'/1]).
-export(['K-sequenceExprTypeswitch-7'/1]).
-export(['K-sequenceExprTypeswitch-8'/1]).
-export(['K2-sequenceExprTypeswitch-1'/1]).
-export(['K2-sequenceExprTypeswitch-2'/1]).
-export(['K2-sequenceExprTypeswitch-3'/1]).
-export(['K2-sequenceExprTypeswitch-4'/1]).
-export(['K2-sequenceExprTypeswitch-5'/1]).
-export(['K2-sequenceExprTypeswitch-6'/1]).
-export(['K2-sequenceExprTypeswitch-7'/1]).
-export(['K2-sequenceExprTypeswitch-8'/1]).
-export(['K2-sequenceExprTypeswitch-9'/1]).
-export(['K2-sequenceExprTypeswitch-10'/1]).
-export(['K2-sequenceExprTypeswitch-11'/1]).
-export(['K2-sequenceExprTypeswitch-12'/1]).
-export(['K2-sequenceExprTypeswitch-13'/1]).
-export(['K2-sequenceExprTypeswitch-14'/1]).
-export(['K2-sequenceExprTypeswitch-15'/1]).
-export(['K2-sequenceExprTypeswitch-16'/1]).
-export(['typeswitch-union-nomatch'/1]).
-export(['typeswitch-union-nomatch-2'/1]).
-export(['typeswitch-union-branch-1'/1]).
-export(['typeswitch-union-branch-1-dup'/1]).
-export(['typeswitch-union-branch-2'/1]).
-export(['typeswitch-union-branch-2-dup'/1]).
-export(['typeswitch-union-branch-both'/1]).
-export(['typeswitch-union-branch-both-dup'/1]).
-export(['typeswitch-union-multi'/1]).
-export(['typeswitch-in-xpath'/1]).
-export(['typeswitch-union-in-xquery-10'/1]).
-export(['typeswitch-112'/1]).
-export(['typeswitch-113'/1]).
-export(['typeswitch-114'/1]).
-export(['typeswitch-115'/1]).
-export(['typeswitch-116'/1]).
-export(['cbcl-typeswitch-001'/1]).
-export(['cbcl-typeswitch-002'/1]).
-export(['cbcl-typeswitch-003'/1]).
-export(['cbcl-typeswitch-004'/1]).
-export(['cbcl-typeswitch-005'/1]).
-export(['cbcl-typeswitch-006'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'typeswitchhc1',
   'typeswitchhc2',
   'typeswitchhc3',
   'typeswitchhc4',
   'typeswitchhc5',
   'typeswitchhc6',
   'typeswitchhc7',
   'typeswitchhc8',
   'typeswitchhc9',
   'typeswitchhc10',
   'typeswitchhc11',
   'typeswitchhc12',
   'typeswitchhc13',
   'typeswitchhc14',
   'typeswitchhc15',
   'typeswitchhc16',
   'typeswitchhc17',
   'typeswitchhc18',
   'typeswitchhc19',
   'typeswitchhc20',
   'typeswitchhc21',
   'typeswitchhc22',
   'typeswitchhc23',
   'typeswitchhc24',
   'typeswitchhc25',
   'K-sequenceExprTypeswitch-1',
   'K-sequenceExprTypeswitch-2',
   'K-sequenceExprTypeswitch-3',
   'K-sequenceExprTypeswitch-4',
   'K-sequenceExprTypeswitch-5',
   'K-sequenceExprTypeswitch-6',
   'K-sequenceExprTypeswitch-7',
   'K-sequenceExprTypeswitch-8',
   'K2-sequenceExprTypeswitch-1',
   'K2-sequenceExprTypeswitch-2',
   'K2-sequenceExprTypeswitch-3',
   'K2-sequenceExprTypeswitch-4',
   'K2-sequenceExprTypeswitch-5',
   'K2-sequenceExprTypeswitch-6',
   'K2-sequenceExprTypeswitch-7',
   'K2-sequenceExprTypeswitch-8',
   'K2-sequenceExprTypeswitch-9',
   'K2-sequenceExprTypeswitch-10',
   'K2-sequenceExprTypeswitch-11',
   'K2-sequenceExprTypeswitch-12',
   'K2-sequenceExprTypeswitch-13',
   'K2-sequenceExprTypeswitch-14',
   'K2-sequenceExprTypeswitch-15',
   'K2-sequenceExprTypeswitch-16',
   'typeswitch-union-nomatch',
   'typeswitch-union-nomatch-2',
   'typeswitch-union-branch-1',
   'typeswitch-union-branch-1-dup',
   'typeswitch-union-branch-2',
   'typeswitch-union-branch-2-dup',
   'typeswitch-union-branch-both',
   'typeswitch-union-branch-both-dup',
   'typeswitch-union-multi',
   'typeswitch-in-xpath',
   'typeswitch-union-in-xquery-10',
   'typeswitch-112',
   'typeswitch-113',
   'typeswitch-114',
   'typeswitch-115',
   'typeswitch-116',
   'cbcl-typeswitch-001',
   'cbcl-typeswitch-002',
   'cbcl-typeswitch-003',
   'cbcl-typeswitch-004',
   'cbcl-typeswitch-005',
   'cbcl-typeswitch-006'].
environment('empty') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/works.xml","$works",""},
{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.example.com/AuctionWatch","ma"},
{"http://www.w3.org/1999/xlink","xlink"},
{"http://www.example.com/auctioneers#anyzone","anyzone"},
{"http://www.example.com/auctioneers#eachbay","eachbay"},
{"http://www.example.com/auctioneers#yabadoo","yabadoo"}]},
{resources, []},
{modules, []}
];
environment('qname') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/QName-source.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('ListUnionTypes') ->
[{sources, []},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/ValidateExpr/listunion.xsd","http://www.w3.org/XQueryTest/ListUnionTypes"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'typeswitchhc1'(_Config) ->
   Qry = "typeswitch (5) case $i as xs:integer return <wrap>test passed - integer data type</wrap> case $i as xs:date return <wrap>test failed</wrap> case $i as xs:time return <wrap>test failed</wrap> case $i as xs:string return <wrap>test failed</wrap> default return <wrap>test failed</wrap>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<wrap>test passed - integer data type</wrap>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'typeswitchhc2'(_Config) ->
   Qry = "typeswitch (5.1) case $i as xs:decimal return <wrap>test passed - 5.1 is a decimal type</wrap> case $i as xs:float return <wrap>test failed</wrap> case $i as xs:integer return <wrap>test failed</wrap> case $i as xs:double return <wrap>test failed</wrap> default return <wrap>test failed</wrap>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<wrap>test passed - 5.1 is a decimal type</wrap>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'typeswitchhc3'(_Config) ->
   Qry = "typeswitch (5.1E2) case $i as xs:integer return <wrap>test failed2</wrap> case $i as xs:double return <wrap>test passed - 5.1E2 is a double type</wrap> default return <wrap>test failed</wrap>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<wrap>test passed - 5.1E2 is a double type</wrap>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'typeswitchhc4'(_Config) ->
   Qry = "typeswitch (\"A String\") case $i as xs:decimal return <wrap>test failed</wrap> case $i as xs:integer return <wrap>test failed</wrap> case $i as xs:string return <wrap>test passed - \"A String\" is a string type</wrap> default return <wrap>test failed</wrap>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<wrap>test passed - \"A String\" is a string type</wrap>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'typeswitchhc5'(_Config) ->
   Qry = "typeswitch (1267.43233E12) case $i as xs:string return <wrap>test failed</wrap> case $i as xs:integer return <wrap>test failed</wrap> case $i as xs:double return <wrap>test passed - 1267.43233E12 is a double type</wrap> default return <wrap>test failed</wrap>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<wrap>test passed - 1267.43233E12 is a double type</wrap>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'typeswitchhc6'(_Config) ->
   Qry = "typeswitch(1 > 2) case $i as xs:string return <wrap>test failed</wrap> case $i as xs:integer return <wrap>test failed</wrap> case $i as xs:boolean return <wrap>test passed - 1 > 2 is a boolean type</wrap> default return <wrap>test failed</wrap>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<wrap>test passed - 1 &gt; 2 is a boolean type</wrap>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'typeswitchhc7'(_Config) ->
   Qry = "typeswitch(xs:date(\"1999-05-31\")) case $i as xs:string return <wrap>test failed</wrap> case $i as xs:integer return <wrap>test failed</wrap> case $i as xs:date return <wrap>test passed - xs:date(\"1999-05-31\")is of date type</wrap> default return <wrap>test failed</wrap>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<wrap>test passed - xs:date(\"1999-05-31\")is of date type</wrap>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'typeswitchhc8'(_Config) ->
   Qry = "typeswitch(xs:time(\"12:00:00\")) case $i as xs:string return <wrap>test failed</wrap> case $i as xs:integer return <wrap>test failed</wrap> case $i as xs:time return <wrap>test passed - xs:time(\"12:00:00\")is of time type</wrap> default return <wrap>test failed</wrap>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<wrap>test passed - xs:time(\"12:00:00\")is of time type</wrap>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'typeswitchhc9'(_Config) ->
   Qry = "typeswitch(xs:dateTime(\"1999-12-31T19:20:00\")) case $i as xs:string return <wrap>test failed</wrap> case $i as xs:integer return <wrap>test failed</wrap> case $i as xs:dateTime return <wrap>test passed - xs:dateTime(\"1999-12-31T19:20:00\")is of dateTime type</wrap> default return <wrap>test failed</wrap>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<wrap>test passed - xs:dateTime(\"1999-12-31T19:20:00\")is of dateTime type</wrap>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'typeswitchhc10'(_Config) ->
   Qry = "typeswitch(xs:anyURI(\"http://example.com\")) case $i as xs:string return <wrap>test failed</wrap> case $i as xs:integer return <wrap>test failed</wrap> case $i as xs:anyURI return <wrap>test passed - xs:anyURI(\"http://www.example.com\")is of anyURI type</wrap> default return <wrap>test failed</wrap>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<wrap>test passed - xs:anyURI(\"http://www.example.com\")is of anyURI type</wrap>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'typeswitchhc11'(_Config) ->
   Qry = "typeswitch(123) case $i as xs:string return <wrap>test failed</wrap> case $i as xs:double return <wrap>test failed</wrap> case $i as xs:anyURI return <wrap>test failed</wrap> default return <wrap>test passed - 123 is an integer (not an option on any cases)</wrap>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<wrap>test passed - 123 is an integer (not an option on any cases)</wrap>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'typeswitchhc12'(_Config) ->
   Qry = "typeswitch(123) case $i as xs:string return <wrap>test failed</wrap> case $i as xs:double return <wrap>test failed</wrap> case $i as xs:integer return <wrap>test passed - If a dynamic error is generated, then test failed.</wrap> default return 12 div 0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<wrap>test passed - If a dynamic error is generated, then test failed.</wrap>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'typeswitchhc13'(_Config) ->
   Qry = "typeswitch(if (1 lt 2) then 3 else 4.5E4) case $i as xs:string return <wrap>test failed</wrap> case $i as xs:double return <wrap>test failed</wrap> case $i as xs:integer return <wrap>test passed - \"(1 lt 2) then 3 else 4.5E4\" should evaluate to an integer</wrap> default return <wrap>test failed</wrap>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<wrap>test passed - \"(1 lt 2) then 3 else 4.5E4\" should evaluate to an integer</wrap>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'typeswitchhc14'(_Config) ->
   Qry = "typeswitch(fn:true() and fn:true()) case $i as xs:string return <wrap>test failed</wrap> case $i as xs:double return <wrap>test failed</wrap> case $i as xs:boolean return <wrap>test passed - \"fn:true() and fn:true()\" should evaluate to boolean type</wrap> default return <wrap>test failed</wrap>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<wrap>test passed - \"fn:true() and fn:true()\" should evaluate to boolean type</wrap>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'typeswitchhc15'(_Config) ->
   Qry = "typeswitch(fn:true() or fn:false()) case $i as xs:string return <wrap>test failed</wrap> case $i as xs:double return <wrap>test failed</wrap> case $i as xs:boolean return <wrap>test passed - \"fn:true() or fn:false()\" should evaluate to boolean type</wrap> default return <wrap>test failed</wrap>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<wrap>test passed - \"fn:true() or fn:false()\" should evaluate to boolean type</wrap>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'typeswitchhc16'(_Config) ->
   Qry = "typeswitch(typeswitch (1) case $i as xs:integer return $i default return <a>fn:false</a> ) case $i as xs:string return <wrap>test failed</wrap> case $i as xs:double return <wrap>test failed</wrap> case $i as xs:integer return <wrap>test passed - the operand expression should evaluate to an integer type</wrap> default return <wrap>test failed</wrap>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<wrap>test passed - the operand expression should evaluate to an integer type</wrap>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'typeswitchhc17'(_Config) ->
   Qry = "typeswitch (5) case $i as xs:integer return xs:integer(1 + 1) case $i as xs:date return <wrap>test failed</wrap> case $i as xs:time return <wrap>test failed</wrap> case $i as xs:string return <wrap>test failed</wrap> default return <wrap>test failed</wrap>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'typeswitchhc18'(_Config) ->
   Qry = "typeswitch (5.1) case $i as xs:decimal return xs:decimal(1.1 + 3.1) case $i as xs:float return <wrap>test failed</wrap> case $i as xs:integer return <wrap>test failed</wrap> case $i as xs:double return <wrap>test failed</wrap> default return <wrap>test failed</wrap>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "4.2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'typeswitchhc19'(_Config) ->
   Qry = "typeswitch (5.1E2) case $i as xs:integer return <wrap>test failed2</wrap> case $i as xs:double return xs:double(5.1E2 + 1.1E2) default return <wrap>test failed</wrap>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"620") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'typeswitchhc20'(_Config) ->
   Qry = "typeswitch (\"A String\") case $i as xs:decimal return <wrap>test failed</wrap> case $i as xs:integer return <wrap>test failed</wrap> case $i as xs:string return fn:string-length($i) default return <wrap>test failed</wrap>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"8") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'typeswitchhc21'(_Config) ->
   Qry = "typeswitch (1) case $i as xs:double return <wrap>test failed</wrap> case $i as xs:integer return fn:count((1, 2, 3)) case $i as xs:string return <wrap>test failed</wrap> default return <wrap>test failed</wrap>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"3") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'typeswitchhc22'(_Config) ->
   Qry = "typeswitch (1) case $i as xs:double return <wrap>test failed</wrap> case $i as xs:integer return 5 - 3 case $i as xs:string return <wrap>test failed</wrap> default return <wrap>test failed</wrap>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'typeswitchhc23'(_Config) ->
   Qry = "typeswitch (1) case $i as xs:double return <wrap>test failed</wrap> case $i as xs:integer return 5 * 2 case $i as xs:string return <wrap>test failed</wrap> default return <wrap>test failed</wrap>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"10") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'typeswitchhc24'(_Config) ->
   Qry = "typeswitch (1) case $i as xs:double return <wrap>test failed</wrap> case $i as xs:integer return 10 div 2 case $i as xs:string return <wrap>test failed</wrap> default return <wrap>test failed</wrap>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"5") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'typeswitchhc25'(_Config) ->
   Qry = "typeswitch (1) case $i as xs:double return <wrap>test failed</wrap> case $i as xs:integer return 10 idiv 2 case $i as xs:string return <wrap>test failed</wrap> default return <wrap>test failed</wrap>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"5") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-sequenceExprTypeswitch-1'(_Config) ->
   Qry = "(typeswitch((1, 2)) case xs:integer return -1 case xs:integer+ return 1 default return -2) eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-sequenceExprTypeswitch-2'(_Config) ->
   Qry = "(typeswitch(\"a string\") case xs:anyURI return -1 case xs:string return 1 default return -2) eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-sequenceExprTypeswitch-3'(_Config) ->
   Qry = "(typeswitch(\"a string\") case xs:untypedAtomic return -1 case xs:string return 1 default return -2) eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-sequenceExprTypeswitch-4'(_Config) ->
   Qry = "(typeswitch((1, \"a string\")) case xs:integer return -1 case xs:string return -2 case xs:anyAtomicType+ return 1 default return -3) eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-sequenceExprTypeswitch-5'(_Config) ->
   Qry = "(typeswitch(((1, current-time())[1])) case element() return -1 case xs:integer return 1 default return -2) eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-sequenceExprTypeswitch-6'(_Config) ->
   Qry = "(typeswitch(()) case xs:integer* return 1 case empty-sequence() return 1 default return -2) eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-sequenceExprTypeswitch-7'(_Config) ->
   Qry = "(typeswitch(1, 2, 3) case xs:string+ return -1 case xs:integer+ return 1 default return -2) eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-sequenceExprTypeswitch-8'(_Config) ->
   Qry = "(typeswitch(1, 2, current-time()) case element() return -1 case document-node() return -2 default return 1) eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-sequenceExprTypeswitch-1'(_Config) ->
   Qry = "boolean(typeswitch (current-time(), 1, 3e3, \"foo\") case node() return 0 case xs:integer return 3 case xs:anyAtomicType return true() default return -1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-sequenceExprTypeswitch-2'(_Config) ->
   Qry = "typeswitch(current-time()) case node() return 0 case xs:integer return 3 case xs:anyAtomicType return true()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-sequenceExprTypeswitch-3'(_Config) ->
   Qry = "typeswitch 1 case node() return 0 case xs:integer return 3 default return true()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-sequenceExprTypeswitch-4'(_Config) ->
   Qry = "typeswitch (1, 2, 3) case $i as node() return <e/> case xs:integer* return $i default return true()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-sequenceExprTypeswitch-5'(_Config) ->
   Qry = "typeswitch (1, 2, 3) case node() return $i case $i as xs:integer return 1 default return true()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-sequenceExprTypeswitch-6'(_Config) ->
   Qry = "typeswitch (1, 2, 3) case node() return <e/> case $i as xs:integer return 1 default return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-sequenceExprTypeswitch-7'(_Config) ->
   Qry = "typeswitch (1, 2, 3) case node() return <e/> case xs:integer* return $i default $i return 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-sequenceExprTypeswitch-8'(_Config) ->
   Qry = "typeswitch (1, 2, 3) case node() return <e/> case xs:integer return 3 default $i as item() return 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-sequenceExprTypeswitch-9'(_Config) ->
   Qry = "typeswitch (1, 2, 3) case node() return <e/> case xs:integer return 3 default $i return 1, $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-sequenceExprTypeswitch-10'(_Config) ->
   Qry = "typeswitch (1, 2, 3) case node() return <e/> case $i as xs:integer return 3 default return 1, $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-sequenceExprTypeswitch-11'(_Config) ->
   Qry = "typeswitch (1, 2, 3) case node() return <e/> default $i return 1 , typeswitch (1, 2, 3) case xs:integer* return $i default return 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-sequenceExprTypeswitch-12'(_Config) ->
   Qry = "declare variable $i := (attribute name {\"content\"}, <a attr=\"content\"/>, <e/>, 1, \"str\", <!-- a comment -->); <d> { typeswitch(typeswitch($i) case $b as element(e) return concat(\"Found an element by name \", $b) case $b as element() return comment{concat(\"Found: \", $b)} case $c as attribute(doesntMatch) return $c/.. default $def return $def) case $str as xs:string return \"A string\" case $attr as attribute() return string($attr) default $def return $def } </d>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<d name=\"content\"><a attr=\"content\"/><e/>1 str<!-- a comment --></d>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-sequenceExprTypeswitch-13'(_Config) ->
   Qry = "declare variable $i := (<e/>, attribute name {\"content\"}, <a attr=\"content\"/>, <e/>, 1, \"str\", <!-- a comment -->); <d> { typeswitch(typeswitch($i) case $b as element(e) return concat(\"Found an element by name \", $b) case $b as element() return comment{concat(\"Found: \", $b)} case $c as attribute(doesntMatch) return $c/.. default $def return $def) case $str as xs:string return \"A string\" case $attr as attribute() return string($attr) default $def return $def } </d>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQTY0024") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-sequenceExprTypeswitch-14'(_Config) ->
   Qry = "<e/>/(typeswitch (self::node()) case $i as node() return . default return 1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-sequenceExprTypeswitch-15'(_Config) ->
   Qry = "<e/>/(typeswitch (self::node()) case $i as xs:integer return $i default $v return $v)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-sequenceExprTypeswitch-16'(_Config) ->
   Qry = "typeswitch(<e/>, <e/>) case $b as element() return concat(\"\", $b treat as element()) default return 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'typeswitch-union-nomatch'(_Config) ->
   Qry = "
	 typeswitch (<e/>) 
	 case $i as xs:integer | xs:string return $i
	 default $v return 0
	 ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'typeswitch-union-nomatch-2'(_Config) ->
   Qry = "
	 typeswitch (<e/>) 
	 case xs:integer | xs:string return 1
	 default $v return 0
	 ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'typeswitch-union-branch-1'(_Config) ->
   Qry = "
	 typeswitch (47) 
	 case $i as xs:integer | xs:string return $i
	 default $v return 0
	 ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"47") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:integer") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> ct:fail('all-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'typeswitch-union-branch-1-dup'(_Config) ->
   Qry = "
	 typeswitch (47) 
	 case $i as xs:integer | xs:string return $i
	 case $i as xs:integer return $i
	 default $v return 0
	 ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"47") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:integer") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> ct:fail('all-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'typeswitch-union-branch-2'(_Config) ->
   Qry = "
	 typeswitch (47) 
	 case $i as xs:string | xs:integer return $i
	 default $v return 0
	 ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"47") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:integer") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> ct:fail('all-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'typeswitch-union-branch-2-dup'(_Config) ->
   Qry = "
	 typeswitch (47) 
	 case $i as xs:string | xs:integer return $i
	 case $i as xs:integer return $i
	 default $v return 0
	 ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"47") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:integer") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> ct:fail('all-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'typeswitch-union-branch-both'(_Config) ->
   Qry = "
	 typeswitch (xs:integer(47)) 
	 case $i as xs:decimal | xs:integer return $i
	 default $v return 0
	 ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"47") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:decimal") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> ct:fail('all-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'typeswitch-union-branch-both-dup'(_Config) ->
   Qry = "
	 typeswitch (xs:integer(47)) 
	 case $i as xs:decimal | xs:integer return $i
	 case $i as xs:decimal return $i
	 default $v return 0
	 ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"47") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:decimal") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> ct:fail('all-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'typeswitch-union-multi'(_Config) ->
   Qry = "
	 for $x in (<e/>, 1, \"x\") return
	 typeswitch ($x) 
	 case $i as xs:integer | xs:boolean | element() return 1
	 default $v return 0
	 ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1, 1, 0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'typeswitch-in-xpath'(_Config) ->
   {skip,"XP20+"}.
'typeswitch-union-in-xquery-10'(_Config) ->
   {skip,"XQ10"}.
'typeswitch-112'(_Config) ->
   {skip,"schemaImport"}.
'typeswitch-113'(_Config) ->
   {skip,"schemaImport"}.
'typeswitch-114'(_Config) ->
   {skip,"schemaImport"}.
'typeswitch-115'(_Config) ->
   {skip,"schemaImport"}.
'typeswitch-116'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-typeswitch-001'(_Config) ->
   Qry = "
        upper-case(typeswitch ((1 to 10)[. mod 2 = 0]) case xs:integer+ return \"int\" default return \"false\")
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "INT") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-typeswitch-002'(_Config) ->
   Qry = "
        upper-case(typeswitch ((1 to 10)[. div 2 = 0]) case xs:integer+ return \"int\" default return \"false\")
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "FALSE") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-typeswitch-003'(_Config) ->
   Qry = "
        typeswitch ((1 to 10)[. mod 2 = 0]) case xs:integer+ return true() default return true()
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-typeswitch-004'(_Config) ->
   Qry = "
        typeswitch ((1 to 10)[. mod 2 = 0]) case xs:integer+ return false() default return true()
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-typeswitch-005'(_Config) ->
   Qry = "
        subsequence((1 to 10)[. mod 2 = 0] instance of xs:integer+,1)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-typeswitch-006'(_Config) ->
   Qry = "xs:string((1 to 10)[. mod 2 = 0] instance of xs:integer+)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
