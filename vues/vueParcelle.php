<h2>Gérer un parcelle</h2>
<div>
    <form action=# method="post">
        <fieldset>
            <label for="nbpmin">Nombre de rang  minimal</label>
            <input type="number" name="nbpmin" id="nbpmin" min="0" max="1000" required/><br/>

            <label for="nbpmax">Nombre de rang Max</label>
            <input type="number" name="nbpmax" id="nbpmax" min="0" max="1000" required/><br/>

            <label for="proc">Pourcentage de rangs occupés par des cultures</label>
            <input type="number" name="proc" id="proc" placeholder="0" min="0" max="100" required/><br/>

            <label for="propi">Pourcentage de rangs occupés par des plantes indésirables</label>
            <input type="number" name="propi" id="propi" placeholder="0" min="0" max="100" required/><br/>

            <input type="submit" name="valider" value="ajouter">
            <input type="reset" value="annuler">

        </fieldset>
    </form>

    <?php if(isset($message)) { ?>
	    <p style="background-color: orange;"><?= $message ?></p>
    <?php } ?>
</div>