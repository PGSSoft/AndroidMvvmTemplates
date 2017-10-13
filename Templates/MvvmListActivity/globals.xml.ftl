<?xml version="1.0"?>
<globals>
 <global id="manifestOut" value="${manifestDir}" />
 <global id="resOut" value="${resDir}" />
 <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />
 <global id="generatedNameLower" value="${generatedName[0]?lower_case + generatedName[1..]}" />
</globals>