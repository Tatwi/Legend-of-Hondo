/*
 * PlayerZoneComponent.cpp
 *
 *  Created on: 26/05/2011
 *      Author: victor
 */

#include "PlayerZoneComponent.h"

#include "server/zone/managers/creature/CreatureManager.h"
#include "server/zone/managers/planet/PlanetManager.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/building/BuildingObject.h"
#include "server/zone/Zone.h"

void PlayerZoneComponent::notifyInsertToZone(SceneObject* sceneObject, Zone* newZone) const {
	//SceneObject* parent = sceneObject->getParent();

	/*if (parent == NULL && !sceneObject->isInQuadTree() && sceneObject->isPlayerCreature()) {
		CreatureObject* player = cast<CreatureObject*>( sceneObject);
		PlayerObject* ghost = player->getPlayerObject();

		uint64 savedParentID = 0;

		if (ghost != NULL && (savedParentID = ghost->getSavedParentID()) != 0) {
			sceneObject->setParent(sceneObject->getZoneServer()->getObject(savedParentID));
		}


	}*/

	if (sceneObject->isPlayerCreature() && newZone != NULL) {
		PlayerObject* ghost = sceneObject->asCreatureObject()->getPlayerObject();

		if (ghost != NULL)
			ghost->setSavedTerrainName(newZone->getZoneName());
	}

	ZoneComponent::notifyInsertToZone(sceneObject, newZone);

	//sceneObject->info("blia", true);
}

void PlayerZoneComponent::notifyInsert(SceneObject* sceneObject, QuadTreeEntry* entry) const {
	SceneObject* scno = static_cast<SceneObject*>( entry);

	if (scno == sceneObject)
		return;

	if (scno->isTangibleObject()) {
		TangibleObject* tano = scno->asTangibleObject();

		if (tano->isInvisible())
			return;
	}

	ManagedReference<SceneObject*> parent = scno->getParent().get();

	if (parent != NULL /*&& parent->isCellObject()*/) {
		return;
	}

	scno->sendTo(sceneObject, true);
}

void PlayerZoneComponent::notifyDissapear(SceneObject* sceneObject, QuadTreeEntry* entry) const {
	SceneObject* scno = static_cast<SceneObject*>( entry);

	if (scno == sceneObject)
		return;

	scno->sendDestroyTo(sceneObject);

	//sceneObject->removeNotifiedSentObject(scno);
}

void PlayerZoneComponent::switchZone(SceneObject* sceneObject, const String& newTerrainName, float newPostionX, float newPositionZ, float newPositionY, uint64 parentID, bool toggleInvisibility) const {
	if (sceneObject->isPlayerCreature()) {
		CreatureObject* player = sceneObject->asCreatureObject();
		PlayerObject* ghost = player->getPlayerObject();

		ManagedReference<SceneObject*> par = sceneObject->getParent();

		if (par != NULL && (par->isVehicleObject() || par->isMount())) {
			player->executeObjectControllerAction(STRING_HASHCODE("dismount"));
		}

		if (ghost != NULL) {
			ghost->setSavedParentID(0);

			ghost->setTeleporting(true);
			ghost->setOnLoadScreen(true);
			ghost->updateLastValidatedPosition();
			ghost->setClientLastMovementStamp(0);

			ghost->unloadSpawnedChildren();
		}

		player->setMovementCounter(0);

	}

	ZoneComponent::switchZone(sceneObject, newTerrainName, newPostionX, newPositionZ, newPositionY, parentID, toggleInvisibility);
}

void PlayerZoneComponent::teleport(SceneObject* sceneObject, float newPositionX, float newPositionZ, float newPositionY, uint64 parentID) const {
	CreatureObject* player = NULL;

	if (sceneObject->isPlayerCreature()) {
		player = sceneObject->asCreatureObject();
	}

	if (player != NULL && sceneObject->getParent() != NULL && parentID != 0) {
		ManagedReference<SceneObject*> par = sceneObject->getParent();

		if (par->isVehicleObject() || par->isMount()) {
			player->executeObjectControllerAction(STRING_HASHCODE("dismount"));
		}
	}

	ZoneComponent::teleport(sceneObject, newPositionX, newPositionZ, newPositionY, parentID);

	if (player != NULL) {
		PlayerObject* ghost = player->getPlayerObject();

		if (ghost != NULL) {
			ghost->setTeleporting(true);
			ghost->updateLastValidatedPosition();
			ghost->setClientLastMovementStamp(0);
		}

		player->setMovementCounter(0);
	}
}

/**
 * Updates position of this object to the rest of in range objects
 * @pre { this object is locked}
 * @post { this object is locked, in range objects are updated with the new position }
 * @param lightUpdate if true a standalone message is sent to the in range objects
 */
void PlayerZoneComponent::updateZone(SceneObject* sceneObject, bool lightUpdate, bool sendPackets) const {
	ZoneComponent::updateZone(sceneObject, lightUpdate, sendPackets);

	if (sceneObject->isPlayerCreature()) {
		CreatureObject* player = sceneObject->asCreatureObject();
		PlayerObject* ghost = player->getPlayerObject();

		if (ghost != NULL)
			ghost->setSavedParentID(0);
	}
}

void PlayerZoneComponent::updateZoneWithParent(SceneObject* sceneObject, SceneObject* newParent, bool lightUpdate, bool sendPackets) const {
	ZoneComponent::updateZoneWithParent(sceneObject, newParent, lightUpdate, sendPackets);

	if (sceneObject->getParent() != NULL && sceneObject->isPlayerCreature()) {
		CreatureObject* player = sceneObject->asCreatureObject();
		PlayerObject* ghost = player->getPlayerObject();

		if (ghost != NULL)
			ghost->setSavedParentID(sceneObject->getParentID());
	}
}
/*
void PlayerZoneComponent::insertToBuilding(SceneObject* sceneObject, BuildingObject* building) {
	ZoneComponent::insertToBuilding(sceneObject, building);

	building->onEnter(dynamic_cast<CreatureObject*>(sceneObject));
}

void PlayerZoneComponent::removeFromBuilding(SceneObject* sceneObject, BuildingObject* building) {
	ZoneComponent::removeFromBuilding(sceneObject, building);

	building->onExit(dynamic_cast<CreatureObject*>(sceneObject));

}*/

void PlayerZoneComponent::notifySelfPositionUpdate(SceneObject* sceneObject) const {
	ZoneComponent::notifySelfPositionUpdate(sceneObject);

	/*if (sceneObject->getZone() == NULL)
		return;*/

	/*if (activeAreas.size() != 0) {
		info(String::valueOf(activeAreas.size()) + " areas", true);
	}*/

	/*SceneObject* parent = sceneObject->getParent();

	if (sceneObject->getActiveAreas()->size() == 0 && sceneObject->inRangeObjectCount() < 20) {
		if ((parent != NULL && !parent->isCellObject()) || parent == NULL) {
			sceneObject->getZone()->getCreatureManager()->spawnRandomCreaturesAround(sceneObject);
		}
	}*/
}

