/**
 * Publish diploma
 * @param {org.example.mynetwork.PublishDiploma} publishDiploma - the diploma to be processed
 * @transaction
 */
async function PublishDiploma(publishDiploma) {
    // set the new owner of the diploma
    publishDiploma.diploma.student = publishDiploma.student;
    
    const assetRegistry = await getAssetRegistry('org.example.mynetwork.Diploma');

    // persist the state of the commodity
    await assetRegistry.update(publishDiploma.diploma);
}