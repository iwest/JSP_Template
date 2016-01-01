<%@tag description="A closable callout panel for presenting messages to the user" pageEncoding="utf-8"%>
<%@attribute name="viewAlert" required="true" type="testee.model.ViewAlert"%>

<div class="row">
    <div class="column">
        <div class="${pageScope.viewAlert.type} callout margin-bottom-0" data-closable>
            <p class="margin-bottom-0">${pageScope.viewAlert.message}</p>
            <!--
                Button's onclick is a temporary solution to buggy Foundation js
                Note the nonfunctional close button on
                    http://foundation.zurb.com/sites/docs/close-button.html
            -->
            <button
                    onclick="$(this).parent().remove()"
                    class="close-button" aria-label="Dismiss alert" type="button" data-close>
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    </div>
</div>