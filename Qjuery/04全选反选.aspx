<%@ Page Language="C#" AutoEventWireup="true" CodeFile="04ȫѡ��ѡ.aspx.cs" Inherits="_04ȫѡ��ѡ" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.4.1-vsdoc.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            //ȫѡ
            $("#hobby :checkbox[value=all]").click(function () {
                var check = $(this).attr("checked");
                $("#hobby :checkbox[value!=all]").attr("checked", check);
            })

            //����ӵ�checkbox���ж�ȫѡ��checkbox�Ƿ�ѡ��
            $("#hobby :checkbox[value!=all]").click(singlecheck);

            //��ѡ

            $("#hobby :button[value=��ѡ]").click(function () {
                $("#hobby :checkbox[value!=all]").each(function () {
                    //�õ�ǰ�ӵ�box��״̬ȡ��
                    $(this).attr("checked", !$(this).attr("checked"));
                })
                //��������ȫѡ��״̬
                singlecheck();
            })

        })


        function singlecheck() {
            var checkAll = true;
            //���е��ӵ�checkbox����������û�б�ѡ�еģ������û�б�ѡ�е���checkAll=false
            $("#hobby :checkbox[value!=all]").each(function () {
                if (!$(this).attr("checked")) {
                    checkAll = false;
                    return false;
                }
            })
            $("#hobby :checkbox[value=all]").attr("checked", checkAll);
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="hobby">
            <input type="checkbox" value="cf" />�Է�<br />
            <input type="checkbox" value="sj" />˯��<br />
            <input type="checkbox" value="ddd" />�򶹶�<br />
            <br />
            <input type="checkbox" value="all" />ȫѡ
            <input type="button" value="��ѡ" />
        </div>
        <input type="button" value="test" />
    </div>
    </form>
</body>
</html>
