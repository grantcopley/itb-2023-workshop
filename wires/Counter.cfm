<cfoutput>
    <div>
        <h2>Counter</h2>
        <p class="fw-bold">#counter#</p>
        <p><cfif isEven()>Even<cfelse>Odd</cfif></p>
        <button wire:click="increment">Increment</button>
    </div>
</cfoutput>

<cfscript>
    // Data properties
    // Populate with default values
    data = {
        "counter": 0
    };

    // Computed Properties
    computed = {
        "isEven": function() {
            return data.counter % 2 == 0;
        }
    }

    // Actions
    function increment() {
        data.counter += 1;
    }
</cfscript>