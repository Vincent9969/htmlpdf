<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <meta charset="GBK"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"></meta> 

    <style type="text/css">

    @page {

margin: 0.6in 0.2in 0.1in 0.2in;

/* padding: 1em; */

}

table {table-layout:fixed;}
  td {word-wrap:break-word;}

body {

font-family: 'SimSun','STZhongsong';

}

      .container{

        width:600px;margin:0px auto;
        text-align: center;
        font-size:14px;
      }
      
      .container .underline{text-decoration:underline;}
      .container .left{
        text-align:left;
        margin-top:30px;
      }
      
      .container .table{ border-collapse:collapse; width:600px;}
      .container .table td{ border:1px solid #000;}
      
      .container .right{
        margin-top:20px;
        margin-left:300px;
      }
      
      .container .dbright{
        margin-top:20px;
        
      }
      
      .container .fwhzx{
        margin-top:70px;
        text-align:left;
        margin-left:100px;
      }
      
      .container .underline-empty{ border-bottom:1px solid #00F; color:#090}
      
      .container .board{font-weight:bold;}


      .xspycontent .tablewidth{

        width:680px;

    }

    .xspycontent table
    {
        border-collapse:collapse;
    }


      .xspycontent  .tablewidth td{
          
            border-top: 1px solid black;
            border-bottom: 1px solid black;
            border-left: 1px solid black;
            border-right: 1px solid black;
            padding-left: 10px;
        }

    .xspycontent{width:680px;margin:0px auto;}

    .xspycontent .xuxian-bottom{
      border-bottom:1px dashed black !important;
    }

    .xspycontent .xuxian-top{
      border-top:1px dashed black !important;
    }

    .xspycontent .paddingleft{

        padding-left: 10px;
    }
   .xspycontent .textaligncenter td{

        text-align: center;
        padding-left: 0px!important;
    }
    </style>
  </head>


  <body>

    <div class="container">
      <span class="underline">博士学位论文隐名评审结果通知</span>
      <div class="left"><span class="underline">${username}</span>老师：</div>
      <div class="left" style="padding-left:25px;">您的博士生<span class="underline">liu</span>    的博士学位论文隐名评审方式为<span class="underline">隐名评审</span>，评审意见已返回<span class="underline">3</span>份。评审结果汇总如下表。</div>
      
      <div style="margin-top:20px;">隐名评审结果汇总表</div>
      <div>
        <table class="table">
          <tr>
            <td>评审编号</td>
            <td>总体评价</td>
            <td>创造性</td>
            <td>理论意义</td>
            <td>基础知识</td>
            <td>写作水平</td>
            <td>评审专家对论文内容的熟悉程度</td>
          </tr>
          
          <tr>
            <td>2</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
          
          <tr>
            <td>3</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
        
        </table>
      
      </div>
      
      <div class="left">
        分委员会对该博士论文隐名评审结果及申请答辩的处理意见（在相应的栏目打√）：
      
      </div>
      
      <div class="left">（    ）<span class="board">同意申请答辩：</span>根据评审意见修改论文之后，同意安排答辩。</div>
      <div class="left">（   ）<span class="board">复审：</span>根据评审意见修改论文并写出修改说明（修改时间不少于1个月），经导师、分委员会审查同意后，由院系转呈原评审专家复审。</div>
      <div class="left">（    ）<span class="board">重新送审：</span>根据评审意见修改论文并写出修改说明（修改时间不少于3个月），经导师、分委员会审查同意后，向院系提交2本论文及修改说明，其中1本送原评审专家复审。同时重新提交公开送审。
</div>
      <div class="left">（    ）<span class="board">复议：</span>同意博士生及其导师的申辩意见，连同原评审意见一起，送院系另请两位专家复议。复议结果若有较大异议，论文须作重大修改后重新送审，修改时间不少于6个月。</div>
      
      <div class="left">
        若分委员会同意该博士生答辩，对该生的论文答辩是否<span class="board">抽查*</span>的处理意见如下：
      
      </div>
      <div class="dbright">
      
      （  ）答辩抽查          （  ）答辩不抽查


      </div>
      
     <div class="fwhzx">
			分委员会主席（签字）<span class="underline">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>                       <span style="padding-left:100px;"> <span class="underline">&nbsp;&nbsp;&nbsp;</span>年 <span class="underline">&nbsp;&nbsp;&nbsp;</span>   月<span class="underline">&nbsp;&nbsp;&nbsp;</span>    日</span>

			</div>
			
			<div class="left" style="font-size:9px;page-break-after: always;">
				<span class="underline">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
				<br/>
				* 答辩抽查要求：（1）该生导师不能担任答辩委员会委员，不参加答辩委员会工作会议；（2）分委员会指定一位抽查委员参加该生的答辩会并填写答辩抽查记录，会后将抽查记录交所在院系研究生教务管理部门。<br/>
				* 本表格原件由院系研究生教务办公室留存。
			</div> 
      
      
    </div>




<!--学术评议-->

<div class="xspycontent">
    <div style="text-align:center;font-size:22px;">清华大学博士学位论文学术评议书</div>
    <div style="text-align:center;font-size: 13px;font-weight: bold;font-style: italic;margin-bottom:10px;">（评议书请用黑色墨水笔书写或直接套打印，不得粘贴）</div>
            <table class="tablewidth" height="800"  cellspacing="0" cellpadding="0">
              <tr class="textaligncenter">
                <td width="90" rowspan="2"> 论文题目</td>
                <td width="200" rowspan="2">&nbsp;</td>
                <td width="107" height="40">学生姓名</td>
                <td width="108">&nbsp;</td>
              </tr>
              <tr class="textaligncenter">
                <td height="40">学科</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td height="55" colspan="4" class="xuxian-bottom" style="text-indent:2em;"><div>对论文的学术评语 （论文选题及成果对学科或产业发展的作用和意义，从论文科研工作中反映作者的基础理论和专门知识属何水平，作者对本课题范围内的国内外发展动向、重要文献资料是否有较全面的了解和评述，论文有无错误，总结写作水平如何）：</div></td>
              </tr>
              <tr>
                <td height="506" colspan="4" class="xuxian-top xuxian-bottom">&nbsp;</td>
              </tr>
              
              <tr>
                <td height="10" colspan="4" align="right" class="xuxian-top" style=" border-bottom:0px dashed black !important;"><p >（未详尽处接背面）</p></td>
              </tr>
             
             
            </table>
            <table class="tablewidth"  cellspacing="0" cellpadding="0">
              <tr class="textaligncenter">
                <td width="90">评阅编号</td>
                <td width="100">&nbsp;</td>
                <td width="100">是否博士生导师</td>
                <td width="100">&nbsp;</td>
              </tr>
              <tr class="textaligncenter">
                <td>专业技术职称</td>
                <td>&nbsp;</td>
                <td><p >评阅意见填写日期</p></td>
                <td>&nbsp;</td>
              </tr>
            </table>
            <div style="text-align:center; page-break-after: always;">-8- </div>



            <p>&nbsp;</p>
            <table class="tablewidth" height="490"  cellspacing="0" cellpadding="0">
              <tr>
                <td height="233" colspan="2" valign="top" class="xuxian-bottom"><p >论文的不足之处；对论文工作的意见或建议<strong><em>（请务必填写此栏）</em></strong><strong></strong></p></td>
              </tr>
              <tr>
                <td height="23" colspan="2" class="xuxian-top"><p >请在（ ）中打&#8730;，以供参考：</p></td>
              </tr>
              <tr>
                <td width="90" height="19"><p >论文成果的创造性</p></td>
                <td width="300">大（ ） 较大（ ） 中（ ） 小（ ） 无（ ）</td>
              </tr>
              <tr>
                <td height="37"><p >论文选题的理论意义或实用价值</p></td>
                <td height="37" width="200">大（ ） 较大（ ） 中（ ） 小（ ）</td>
              </tr>
              <tr>
                <td height="40"><p >论文工作中反映出的基础理论和专门知识水平</p></td>
                <td height="40">优（ ） 良（ ） 中（ ） 差（ ） </td>
              </tr>
              <tr>
                <td height="40"><p >论文的总结、写作水平</p></td>
                <td height="40">好（ ） 较好（ ）中（ ） 差（ ） </td>
              </tr>
              <tr>
                <td height="40"><p >论文是否达到了博士学位论文要求的学术水平，可以申请答辩？（评分时请参见下栏说明）</p></td>
                <td height="40">A( ) B( ) C( ) D( ) </td>
              </tr>
            </table>
            <table class="tablewidth"  cellspacing="0" cellpadding="0">
              <tr>
                <td width="40" height="53" style="text-align:center;padding-left:0px;">说明</td>
                <td width="150"><p align="justify" >A 达到博士学位论文要求的学术水平，可以申请答辩； <br />
                  B 达到博士学位论文要求的学术水平，但需对论文内容及文字进行适当修改后方可申请答辩； <br />
                  C 基本达到博士学位论文要求的学术水平，但需对论文内容进行较大修改后方可申请答辩； <br />
                D <strong>没有达到</strong>博士学位论文要求的学术水平，不同意申请答辩。</p></td>
              </tr>
            </table>
            <div style="text-align:center; page-break-after: always;">-9- </div>
            <p>&nbsp;</p>
            <table class="tablewidth"  cellspacing="0" cellpadding="0">
              <tr>
                <td height="600" align="left" valign="top"><p >论文的不足之处；对论文工作的意见或建议<strong><em>（供第</em></strong><strong><em>9</em></strong><strong><em>页写不下时填写，没有可不填）</em></strong> <br />
                上接第9页 </p></td>
              </tr>
            </table>

            <div style="text-align:center;"> -9续1-  </div>

</div>



  </body>
</html>
