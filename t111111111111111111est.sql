with test as(
	select '889' as svc_num, 'AAA' as code, '100' as val from dual
	union all
	select '889' as svc_num, 'BBB' as code, '10' as val  from dual
	union all
	select '779' as svc_num, 'AAA' as code, '800' as val          from dual
	union all
	select '779' as svc_num, 'BBB' as code, '500' as val                   from dual

)
	select * from (
	select * from test
	) pivot ( max(code) as code,max(val) as val
				for code
				in ('AAA' as A_1, 'BBB' as B_1)
		)
		


