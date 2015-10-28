<?php
$dataurl = "ajax.php?module=disa&command=getJSON&jdata=grid";
?>
<div id="toolbar-rnav">
  <a href='?display=disa&view=form' class="btn btn-default"><i class="fa fa-plus"></i> <?php echo _("Add DISA")?></a>
  <a href='?display=disa' class="btn btn-default"><i class="fa fa-list"></i> <?php echo _("DISA List")?></a>
</div>
<table id="disagridrnav" data-url="<?php echo $dataurl?>" data-cache="false" data-toolbar="#toolbar-rnav" data-toggle="table" data-pagination="true" data-search="true" class="table table-striped">
  <thead>
    <tr>
      <th data-field="disa_id" data-formatter="disarnavFormatter" class="col-md-2"><?php echo _("DISA")?></th>
    </tr>
  </thead>
</table>
<script type="text/javascript">
function disarnavFormatter(value, row, index){
  return '<a href="?display=disa&view=form&itemid='+value+'">'+row['displayname']+'</a>';
}
</script>
