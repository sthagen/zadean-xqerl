-module('app_UseCaseTREE_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['tree-queries-results-q1'/1]).
-export(['tree-queries-results-q2'/1]).
-export(['tree-queries-results-q3'/1]).
-export(['tree-queries-results-q4'/1]).
-export(['tree-queries-results-q5'/1]).
-export(['tree-queries-results-q6'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'tree-queries-results-q1',
   'tree-queries-results-q2',
   'tree-queries-results-q3',
   'tree-queries-results-q4',
   'tree-queries-results-q5',
   'tree-queries-results-q6'].
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
environment('book') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/book.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'tree-queries-results-q1'(_Config) ->
   Qry = "
        declare function local:toc($book-or-section as element()) as element()* { 
            for $section in $book-or-section/section 
            return <section> { $section/@* , $section/title , local:toc($section) } </section> };
        <toc> { for $s in /book return local:toc($s) } </toc>
      ",
   Env = xqerl_test:handle_environment(environment('book')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<toc><section id=\"intro\" difficulty=\"easy\"><title>Introduction</title><section><title>Audience</title></section><section><title>Web Data and the Two Cultures</title></section></section><section id=\"syntax\" difficulty=\"medium\"><title>A Syntax For Data</title><section><title>Base Types</title></section><section><title>Representing Relational Databases</title></section><section><title>Representing Object Databases</title></section></section></toc>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'tree-queries-results-q2'(_Config) ->
   Qry = "<figlist> { for $f in //figure return <figure> { $f/@* } { $f/title } </figure> } </figlist>",
   Env = xqerl_test:handle_environment(environment('book')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<figlist><figure height=\"400\" width=\"400\"><title>Traditional client/server architecture</title></figure><figure height=\"200\" width=\"500\"><title>Graph representations of structures</title></figure><figure height=\"250\" width=\"400\"><title>Examples of Relations</title></figure></figlist>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'tree-queries-results-q3'(_Config) ->
   Qry = "<section_count>{ count(//section) }</section_count>, <figure_count>{ count(//figure) }</figure_count>",
   Env = xqerl_test:handle_environment(environment('book')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<section_count>7</section_count><figure_count>3</figure_count>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'tree-queries-results-q4'(_Config) ->
   Qry = "<top_section_count> { count(/book/section) } </top_section_count>",
   Env = xqerl_test:handle_environment(environment('book')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<top_section_count>2</top_section_count>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'tree-queries-results-q5'(_Config) ->
   Qry = "<section_list> { for $s in //section let $f := $s/figure return <section title=\"{ $s/title/text() }\" figcount=\"{ count($f) }\"/> } </section_list>",
   Env = xqerl_test:handle_environment(environment('book')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<section_list><section title=\"Introduction\" figcount=\"0\"/><section title=\"Audience\" figcount=\"0\"/><section title=\"Web Data and the Two Cultures\" figcount=\"1\"/><section title=\"A Syntax For Data\" figcount=\"1\"/><section title=\"Base Types\" figcount=\"0\"/><section title=\"Representing Relational Databases\" figcount=\"1\"/><section title=\"Representing Object Databases\" figcount=\"0\"/></section_list>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'tree-queries-results-q6'(_Config) ->
   Qry = "
        declare function local:section-summary($book-or-section as element()*) as element()* { 
            for $section in $book-or-section 
            return <section> { $section/@* } { $section/title } <figcount> { count($section/figure) } </figcount> { local:section-summary($section/section) } </section> 
        }; 
        <toc> { 
            for $s in /book/section 
            return local:section-summary($s) 
        } </toc>
      ",
   Env = xqerl_test:handle_environment(environment('book')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<toc><section id=\"intro\" difficulty=\"easy\"><title>Introduction</title><figcount>0</figcount><section><title>Audience</title><figcount>0</figcount></section><section><title>Web Data and the Two Cultures</title><figcount>1</figcount></section></section><section id=\"syntax\" difficulty=\"medium\"><title>A Syntax For Data</title><figcount>1</figcount><section><title>Base Types</title><figcount>0</figcount></section><section><title>Representing Relational Databases</title><figcount>1</figcount></section><section><title>Representing Object Databases</title><figcount>0</figcount></section></section></toc>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
