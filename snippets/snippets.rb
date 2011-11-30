require 'ruble'



snippet "Help" do |snip|
  snip.trigger = "tbfhelp"

  snip.expansion =
  '
  <span class="help-block">${1:Here\'s some help text}</span>
  '
end

snippet "Input" do |snip|
  snip.trigger = "tbfi"
  snip.expansion =
  '
  <div class="clearfix">
  <label for="jq_${2:id}">${4:label}</label>
  <div class="input">
  <input type="text" name="${1:name}" id="jq_${2:id}" class="${3}">
  </div>
  </div>
  '
end

snippet "Select" do |snip|
  snip.trigger = "tbfs"
  snip.expansion =
  '
  <div class="clearfix">
  <label for="jq_${2:id}">${4:label}</label>
  <div class="input">
  <selectname="${1:name}" id="jq_${2:id}" class="${3}">
  </select>
  </div>
  </div>
  '
end

snippet "Multi Select" do |snip|
  snip.trigger = "tbfms"
  snip.expansion =
  '
  <div class="clearfix">
  <label for="jq_${2:id}">${5:label}</label>
  <div class="input">
  <select name="${1:name}" id="jq_${2:id}"multiple="multiple" class="${3}" size="${4:5}" >
  </select>
  </div>
  </div>
  '
end

snippet "Uneditable Input" do |snip|
  snip.trigger = "tbfui"
  snip.expansion =
  '
  <div class="clearfix">
  <label>${1:label}</label>
  <div class="input">
  <span class="uneditable-input">${2:Some value here}</span>
  </div>
  </div>
  '
end

snippet "Disabled Textarea" do |snip|
  snip.trigger = "tbfdt"
  snip.expansion =
  '
  <div class="clearfix">
  <label for="jq_${2:id}">${5:label}</label>
  <div class="input">
  <textarea disabled="" name="${1:name}" id="jq_${2:id}" class="${3:xxlarge}" rows="${6:3}"></textarea>
  </div>
  </div>
  '
end

snippet "Disabled Input" do |snip|
  snip.trigger = "tbfdi"
  snip.expansion =
  '
  <div class="clearfix">
  <label for="jq_${2:id}">${5:label}</label>
  <div class="input">
  <input type="text" disabled=""name="${1:name}" id="jq_${2:id}" class="${3:xxlarge} disabled" placeholder="${6:Disabled input here…}">
  </div>
  </div>
  '
end

snippet "Prepended Text" do |snip|
  snip.trigger = "tbfpt"
  snip.expansion =
  '
  <div class="clearfix">
  <label for="jq_${2:id}">${5:label}</label>
  <div class="input">
  <div class="input-prepend">
  <span class="add-on">jq_${4:@}</span>
  <input type="text" name="${1:name}" id="jq_${2:id}" class="${3:medium}">
  </div>
  </div>
  </div>
  '
end

snippet "Prepended Checkbox" do |snip|
  snip.trigger = "tbfpcb"
  snip.expansion =
  '
  <div class="clearfix">
  <label for="jq_${2:id}">${5:label}</label>
  <div class="input">
  <div class="input-prepend">
  <label class="add-on"><input type="checkbox" value="" id="" name=""></label>
  <input type="text" name="${1:name}" id="jq_${2:id}" class="${3:mini}">
  </div>
  </div>
  </div>
  '
end

snippet "Appended Checkbox" do |snip|
  snip.trigger = "tbfacb"
  snip.expansion =
  '
  <div class="clearfix">
  <label for="jq_${2:id}">${5:label}</label>
  <div class="input">
  <div class="input-append">
  <input type="text" name="${1:name}" id="jq_${2:id}" class="${3:mini}">
  <label class="add-on active"><input type="checkbox" value="" id="" name=""></label>
  </div>
  </div>
  </div>
  '
end

snippet "File Input" do |snip|
  snip.trigger = "tbffi"
  snip.expansion =
  '
  <div class="clearfix">
  <label for="jq_${2:id}">${5:label}</label>
  <div class="input">
  <input type="file" name="${1:name}" id="jq_${2:id}" class="${3:input-file}">
  </div>
  </div>
  '
end

snippet "List Of Options Checkbox" do |snip|
  snip.trigger = "tbflooc"
  snip.expansion =
  '
  <div class="clearfix">
  <label for="jq_${2:id}">${5:label}</label>
  <div class="input">
  <ul class="inputs-list">
  <li>
  <label>
  <input type="checkbox" name="${1:name}" id="jq_${2:id}" value="${3:option1}">
  <span>${4:text}</span>
  </ul>
  </div>
  </div>
  '
end

snippet "List Of Options Radio" do |snip|
  snip.trigger = "tbfloor"
  snip.expansion =
  '
  <div class="clearfix">
  <label for="jq_${2:id}">${5:label}</label>
  <div class="input">
  <ul class="inputs-list">
  <li>
  <label>
  <input type="radio" name="${1:name}" id="jq_${2:id}" value="${3:option1}">
  <span>${4:text}</span>
  </ul>
  </div>
  </div>
  '
end

snippet "Inline Inputs" do |snip|
  snip.trigger = "tbfii"
  snip.expansion =
  '
  <div class="clearfix">
  <label>${5:label}</label>
  <div class="input">
  <div class="inline-inputs">
  <input type="text" name="${1:name}" value="${2:value}" class="${3:mini}">
  </div>
  </div>
  </div>
  '
end

snippet "Textarea" do |snip|
  snip.trigger = "tbfloo"
  snip.expansion =
  '
  <div class="clearfix">
  <label for="jq_${2:id}">${5:label}</label>
  <div class="input">
  <textarea rows="3" name="${1:name}" id="jq_${2:id}" class="${3:xxlarge}"></textarea>
  </div>
  </div>
  '
end

snippet "Form Default" do |snip|
  snip.trigger = "tbfftd"
  snip.expansion =
  '
  <form class="${4}" name="${1:name}" id="jq_${2:id}" action="${3}">
  <fieldset>
  <legend>${5:Example form legend}</legend>
  ${10:<!-- Insert Form Here -->}
  </fieldset>
  <div class="actions">
  <button class="btn primary" type="submit">${6:Save changes}</button>&nbsp;<button class="btn" type="reset">${7:Cancel}</button>
  </div>
  </form>
  '
end

snippet "Form Stacked" do |snip|
  snip.trigger = "tbffts"
  snip.expansion =
  '
  <form class="${4:form-stacked}" name="${1:name}" id="jq_${2:id}" action="${3}">
  <fieldset>
  <legend>${5:Example form legend}</legend>
  ${10:<!-- Insert Form Here -->}
  </fieldset>
  <div class="actions">
  <button class="btn primary" type="submit">${6:Save changes}</button>&nbsp;<button class="btn" type="reset">${7:Cancel}</button>
  </div>
  </form>
  '
end


snippet "<button> Primary" do |snip|
  snip.trigger = "tbbtnp"
  snip.expansion =
  '
  <button class="btn primary${2}">${1:name}</button>
  '
end

snippet "<button> Default" do |snip|
  snip.trigger = "tbbtnd"
  snip.expansion =
  '
  <button class="btn${2}">${1:name}</button>
  '
end

snippet "<button> Info" do |snip|
  snip.trigger = "tbbtni"
  snip.expansion =
  '
  <button class="btn info${2}">${1:name}</button>
  '
end

snippet "<button> Success" do |snip|
  snip.trigger = "tbbtns"
  snip.expansion =
  '
  <button class="btn success${2}">${1:name}</button>
  '
end

snippet "<button> Danger" do |snip|
  snip.trigger = "tbbtndn"
  snip.expansion =
  '
  <button class="btn danger${2}">${1:name}</button>
  '
end

snippet "<button> Disabled" do |snip|
  snip.trigger = "tbbtnp"
  snip.expansion =
  '
  <button class="btn primary disabled${2}" disabled="disabled">${1:name}</button>
  '
end


snippet "<a> Primary" do |snip|
  snip.trigger = "tbhrefp"
  snip.expansion =
  '
  <a href="${2:#}" class="btn primary${3}">${1:name}</a>
  '
end

snippet "<a> Default" do |snip|
  snip.trigger = "tbhrefd"
  snip.expansion =
  '
  <a href="${2:#}" class="btn${3}">${1:name}</a>
  '
end

snippet "<a> Info" do |snip|
  snip.trigger = "tbhrefi"
  snip.expansion =
  '
  <a href="${2:#}" class="btn info${3}">${1:name}</a>
  '
end

snippet "<a> Success" do |snip|
  snip.trigger = "tbhrefs"
  snip.expansion =
  '
  <a href="${2:#}" class="btn success${3}">${1:name}</a>
  '
end

snippet "<a> Danger" do |snip|
  snip.trigger = "tbhrefn"
  snip.expansion =
  '
  <a href="${2:#}" class="btn danger${3}">${1:name}</a>
  '
end

snippet "<a> Disabled" do |snip|
  snip.trigger = "tbhrefdi"
  snip.expansion =
  '
  <a href="${2:#}" class="btn disabled${3}">${1:name}</a>
  '
end


snippet "Default Table" do |snip|
  snip.trigger = "tbtbld"
  snip.expansion =
  '
  <table class"">
  <thead>
  <tr>
  <th>Title</th>
  </tr>
  </thead>
  <tbody>
  <tr>
  <td>Cell</td>
  </tr>
  </table>

  '
end

snippet "Condensed Table" do |snip|
  snip.trigger = "tbtblc"
  snip.expansion =
  '
  <table class"${2:condensed-table}">
  <thead>
  <tr>
  <th>Title</th>
  </tr>
  </thead>
  <tbody>
  <tr>
  <td>Cell</td>
  </tr>
  </table>

  '
end

snippet "Bordered Table" do |snip|
  snip.trigger = "tbtblb"
  snip.expansion =
  '
  <table class"${2:bordered-table}">
  <thead>
  <tr>
  <th>Title</th>
  </tr>
  </thead>
  <tbody>
  <tr>
  <td>Cell</td>
  </tr>
  </table>

  '
end

snippet "Zebra Table" do |snip|
  snip.trigger = "tbtblz"
  snip.expansion =
  '
  <table class"${2:zebra-striped}">
  <thead>
  <tr>
  <th>Title</th>
  </tr>
  </thead>
  <tbody>
  <tr>
  <td>Cell</td>
  </tr>
  </table>

  '
end

snippet "Media Grid" do |snip|
  snip.trigger = "tbmg"
  snip.expansion =
  '
  <ul class="media-grid">
  <li>
  <a href="#">
  <img class="thumbnail" src="http://placehold.it/330x230" alt="">
  </a>
  </li>

  </ul>

  '
end

snippet "Inline Label Default" do |snip|
  snip.trigger = "tbild"
  snip.expansion =
  '
  <span class="label">${2:Text}</span>
  '
end

snippet "Inline Label New" do |snip|
  snip.trigger = "tbilnw"
  snip.expansion =
  '
  <span class="label success">${2:Text}</span>
  '
end

snippet "Inline Label Warning" do |snip|
  snip.trigger = "tbilw"
  snip.expansion =
  '
  <span class="label warning">${2:Text}</span>
  '
end

snippet "Inline Label Important" do |snip|
  snip.trigger = "tbili"
  snip.expansion =
  '
  <span class="label important">${2:Text}</span>
  '
end

snippet "Inline Label Notice" do |snip|
  snip.trigger = "tbilnt"
  snip.expansion =
  '
  <span class="label notice">${2:Text}</span>
  '
end


snippet "<code>" do |snip|
  snip.trigger = "tbcode"
  snip.expansion =
  '
  <code>${2:&lt;html&gt;}</code>

  '
end

snippet "<pre>" do |snip|
  snip.trigger = "tbpre"
  snip.expansion =
  '
  <pre>${2:&lt;html&gt;}</pre>

  '
end

snippet "<pre> Pretty Print" do |snip|
  snip.trigger = "tbprep"
  snip.expansion =
  '
  <pre class="prettyprint">${2:&lt;html&gt;}</pre>

  '
end

snippet "<blockquote>" do |snip|
  snip.trigger = "tbblackquotes"
  snip.expansion =
  '
  <blockquote>
  <p>${2:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.}</p>
  <small>${3:Dr. Julius Hibbert}</small>
  </blockquote>
  '
end

snippet "Nested Columns" do |snip|
  snip.trigger = "tblnestedcols"
  snip.expansion =
  '
  <div class="row">
  <div class="span12">
  ${1:Level 1 of column}
  <div class="row">
  <div class="span6">
  ${2:Level 1 of column}
  </div>
  <div class="span6">
  ${3:Level 1 of column}
  </div>
  </div>
  </div>
  </div>
  '
end

snippet "Row" do |snip|
  snip.trigger = "tblrow"
  snip.expansion =
  '
  <div class="row">
  <div class="${1:span12}">
  ${2:Content}
  </div>
  </div>
  '
end

snippet "Fixed Layout" do |snip|
  snip.trigger = "tblfxl"
  snip.expansion =
  '
  <div class="container">
  ${2:...}
  </div>
  '
end

snippet "Fluid Layout" do |snip|
  snip.trigger = "tblfll"
  snip.expansion =
  '
  <div class="container-fluid">
  ${2:...}
  </div>
  '
end

snippet "Tabs" do |snip|
  snip.trigger = "tbntabs"
  snip.expansion =
  '
  <ul class="tabs">
  <li class="active"><a href="#">Home</a></li>
  <li><a href="#">Profile</a></li>
  </ul>
  '
end

snippet "Pills" do |snip|
  snip.trigger = "tbnpills"
  snip.expansion =
  '
  <ul class="pills">
  <li class="active"><a href="#">Home</a></li>
  <li><a href="#">Profile</a></li>
  </ul>
  '
end

snippet "Breadcrumbs" do |snip|
  snip.trigger = "tbnbreadcrumbs"
  snip.expansion =
  '
  <ul class="breadcrumb">
  <li><a href="#">Home</a> <span class="divider">/</span></li>
  <li class="active">You are here</li>
  </ul>
  '
end

snippet "Pagination" do |snip|
  snip.trigger = "tbnpagination"
  snip.expansion =
  '
  <div class="pagination">
  <ul>
  <li class="prev disabled"><a href="#">&larr; Previous</a></li>
  <li class="active"><a href="#">1</a></li>
  <li><a href="#">2</a></li>
  <li class="next"><a href="#">Next &rarr;</a></li>
  </ul>
  </div>
  '
end

snippet "Alert Warning" do |snip|
  snip.trigger = "tbalertw"
  snip.expansion =
  '
  <div class="alert-message warning">
  <a href="#" class="close">×</a>
  <p>${2:Message}</p>
  </div>
  '
end
snippet "Alert Error" do |snip|
  snip.trigger = "tbalerte"
  snip.expansion =
  '
  <div class="alert-message error">
  <a href="#" class="close">×</a>
  <p>${2:Message}</p>
  </div>
  '
end
snippet "Alert Success" do |snip|
  snip.trigger = "tbalerts"
  snip.expansion =
  '
  <div class="alert-message success">
  <a href="#" class="close">×</a>
  <p>${2:Message}</p>
  </div>
  '
end
snippet "Alert Info" do |snip|
  snip.trigger = "tbalerti"
  snip.expansion =
  '
  <div class="alert-message info">
  <a href="#" class="close">×</a>
  <p>${2:Message}</p>
  </div>
  '
end


snippet "Block Warning" do |snip|
  snip.trigger = "tbblockw"
  snip.expansion =
  '
  <div class="alert-message block-message warning">
  <a class="close" href="#">×</a>
  <p>${2:Message}</p>
  ${5:<!-- Additional Stuff Here}
  <div class="alert-actions">
  <a class="btn small" href="#">${3:Yes}</a> <a class="btn small" href="#">${4:No}</a>
  </div>
  </div>
  '
end

snippet "Block Error" do |snip|
  snip.trigger = "tbblocke"
  snip.expansion =
  '
  <div class="alert-message block-message error">
  <a class="close" href="#">×</a>
  <p>${2:Message}</p>
  ${5:<!-- Additional Stuff Here}
  <div class="alert-actions">
  <a class="btn small" href="#">${3:Yes}</a> <a class="btn small" href="#">${4:No}</a>
  </div>
  </div>
  '
end
snippet "Block Success" do |snip|
  snip.trigger = "tbblocks"
  snip.expansion =
  '
  <div class="alert-message block-message success">
  <a class="close" href="#">×</a>
  <p>${2:Message}</p>
  ${5:<!-- Additional Stuff Here}
  <div class="alert-actions">
  <a class="btn small" href="#">${3:Yes}</a> <a class="btn small" href="#">${4:No}</a>
  </div>
  </div>
  '
end
snippet "Block Info" do |snip|
  snip.trigger = "tbblocki"
  snip.expansion =
  '
  <div class="alert-message block-message info">
  <a class="close" href="#">×</a>
  <p>${2:Message}</p>
  ${5:<!-- Additional Stuff Here}
  <div class="alert-actions">
  <a class="btn small" href="#">${3:Yes}</a> <a class="btn small" href="#">${4:No}</a>
  </div>
  </div>
  '
end

snippet "Unordered" do |snip|
  snip.trigger = "tblistuo"
  snip.expansion =
  '
  <ul>
  <li>Lorem ipsum dolor sit amet</li>
  <li>Nulla volutpat aliquam velit
  <ul>
  <li>Phasellus iaculis neque</li>
  </ul>
  </li>
  </ul>
  '
end

snippet "Unstyled" do |snip|
  snip.trigger = "tblistus"
  snip.expansion =
  '
  <ul class="unstyled">
  <li>Lorem ipsum dolor sit amet</li>
  <li>Nulla volutpat aliquam velit
  <ul>
  <li>Phasellus iaculis neque</li>
  </ul>
  </li>
  </ul>
  '
end

snippet "Ordered" do |snip|
  snip.trigger = "tblistor"
  snip.expansion =
  '
  <ol class="unstyled">
  <li>Lorem ipsum dolor sit amet</li>
  </ol>
  '
end

snippet "Description" do |snip|
  snip.trigger = "tblistor"
  snip.expansion =
  '
  <dl>
  <dt>Description lists</dt>
  <dd>A description list is perfect for defining terms.</dd>
  <dt>Euismod</dt>
  <dd>Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.</dd>
  </dl>

  '
end

