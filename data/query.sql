with ct as (select "CallTypeID"
from OKC.CISCO_CALL_TYPE
where 1=1
  and "EnterpriseName" in (
    ...
  )
)

select tbd.dt, 
       count(*)
from 
    (select trunc(tcd."DateTime") dt,
           tcd."RouterCallKeyDay" RCKD,
           tcd."RouterCallKey" RCK
    from okc.cisco_tcd_parted tcd
    where 1=1
      -- ������ �������������� ����� ������
      and tcd."PeripheralID" = 5000
      -- ������ �� ������� ������
      and tcd."CallTypeID" in (select * from ct)
      -- ������ �������� ������, ��� ����� "�����������"
      and tcd."CallDisposition" > 0 
      -- ������ �� ����
      and tcd."DateTime" >= to_date('01.01.2020', 'dd.mm.yyyy') and tcd."DateTime" < to_date('01.11.2022', 'dd.mm.yyyy')
    group by trunc(tcd."DateTime")
          , tcd."RouterCallKeyDay"
          , tcd."RouterCallKey") tbd
group by tbd.dt
