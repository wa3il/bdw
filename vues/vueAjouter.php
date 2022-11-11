
<h2>Ajouter une variété</h2>
    <div>
        <form action=# method="post">
            <fieldset>
            <div>
            <label for="nomV">Nom de la variété :</label></br>
            <input type="text" name="nomV" id="nomV" placeholder="choux blanc" required/><br/></br>
            
            <label for="amm">Année mise en marché</label></br>
            <input type="number" name="amm" id="amm" placeholder="2001" min="1950" max="2021" required/><br/></br>
            </div>
            <div>
            <label id="precoce">Précocité</label>
                <select name="precoce" id="precoce">
                <option value="1">oui</option>
                <option value="0"selected>non</option>
                </select></br></br>
            </div>
            <div>
            <label for="descSemis">Description semis :</label></br>
            <textarea id="descSemis" name="descSemis"rows="2" cols="50">plantation en ligne..</textarea><br/><br/>

            <label for="descPlantation">Description plantation :</label><br/><br/>
            <textarea id="descPlantation" name="descPlantation"rows="2" cols="50">planter cette plante avec la méthode...</textarea><br/><br/>

            <label for="descEntretien">Description de l'entretien : </label><br/><br/>
            <textarea id="descEntretien" name="descEntretien"rows="2" cols="50">aroser tous les x jours...</textarea><br/><br/>

            <label for="periodeRecolte">description de la récolte : </label><br/><br/>
            <textarea id="periodeRecolte" name="periodeRecolte"rows="2" cols="50">récolte rapide...</textarea><br/><br/>

            <label for="nbJourLevee">Nombre de jour de levée : </label>
            <input type="nbJourLevee" name="nbJourLevee" id="nbJourLevee" placeholder="15" min="1" max="100" required/><br/><br/>

            <label for="periodeMisePlace">periode de mise en place : </label>
            <input type="periodeMisePlace" name="periodeMisePlace" id="periodeMisePlace" placeholder="15" min="1" max="100" required/><br/><br/>

            <label for="commentaireGeneral">Commentaire général : </label><br/><br/>
            <textarea id="commentaireGeneral" name="commentaireGeneral"rows="2" cols="50">commentaire général sur la variété.</textarea><br/><br/><br/><br/>
                
            <input type="submit" name="boutonValider" value="ajouter">
            <input type="reset" value="annuler">
            </div>
            
            </fieldset>

        </form>

            <?php if(isset($message)) { ?>
	        <p style="background-color: orange;"><?= $message ?></p>
            <?php } ?>
    </div>
