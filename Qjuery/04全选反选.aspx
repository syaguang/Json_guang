<%@ Page Language="C#" AutoEventWireup="true" CodeFile="04全选反选.aspx.cs" Inherits="_04全选反选" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.4.1-vsdoc.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            //全选
            $("#hobby :checkbox[value=all]").click(function () {
                var check = $(this).attr("checked");
                $("#hobby :checkbox[value!=all]").attr("checked", check);
            })

            //点击子的checkbox，判断全选的checkbox是否选中
            $("#hobby :checkbox[value!=all]").click(singlecheck);

            //反选

            $("#hobby :button[value=反选]").click(function () {
                $("#hobby :checkbox[value!=all]").each(function () {
                    //让当前子的box的状态取反
                    $(this).attr("checked", !$(this).attr("checked"));
                })
                //重新设置全选的状态
                singlecheck();
            })

        })


        function singlecheck() {
            var checkAll = true;
            //所有的子的checkbox，遍历查找没有被选中的，如果有没有被选中的则checkAll=false
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
            <input type="checkbox" value="cf" />吃饭<br />
            <input type="checkbox" value="sj" />睡觉<br />
            <input type="checkbox" value="ddd" />打豆豆<br />
            <br />
            <input type="checkbox" value="all" />全选
            <input type="button" value="反选" />
        </div>
        <input type="button" value="test" />
    </div>
    </form>
</body>
</html>
