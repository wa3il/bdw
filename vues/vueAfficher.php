
<h2>Liste des variétés :</h2>
<table class="table">
    <thead>
        <tr>
            <th scope="col"> id de la variété </th>
            <th scope="col"> nomV </th>
            <th scope="col"> amm </th>
            <th scope="col"> description Semis </th>
            <th scope="col"> description de la Plantation </th> 
            <th scope="col"> description de l'Entretien </th>
            <th scope="col"> periode de récolte</th>
            <th scope="col"> jour levée </th>
            <th scope="col"> Mise en place </th>
            <th scope="col"> commentaire général </th>
        </tr>
    </thead>
    <tbody>
    <?php foreach($varietes as $variete) { ?>
			<tr>
				<th scope="row"><?= $variete['idV'] ?> </td>
				<td><?= $variete['nomV'] ?> </td>
				<td><?= $variete['amm'] ?></td>
                <td><?= $variete['descSemis'] ?></td>
                <td><?= $variete['descPlantation'] ?></td>
                <td><?= $variete['descEntretien'] ?></td>
                <td><?= $variete['periodeRecolte'] ?></td>
                <td><?= $variete['nbJourLevee'] ?></td>
                <td><?= $variete['periodeMisePlace'] ?></td>
                <td><?= $variete['commentaireGeneral'] ?></td>
	<?php } ?>
			</tr>
    </tbody>
    
</table>

<?php if(isset($message)) { ?>
    <p style="background-color: yellow;"><?= $message ?></p>
<?php } ?>
