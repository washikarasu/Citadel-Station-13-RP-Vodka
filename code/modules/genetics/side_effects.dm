/proc/trigger_side_effect(mob/living/carbon/human/H)
	spawn
		if(!istype(H))
			return
		var/tp = pick(typesof(/datum/genetics/side_effect) - /datum/genetics/side_effect)
		var/datum/genetics/side_effect/S = new tp

		S.start(H)
		spawn(20)
			if(!istype(H))
				return
			H.afflict_paralyze(20 * rand(0, S.duration / 50))
		sleep(S.duration)

		if(!istype(H))
			return
		H.set_paralyzed(0)
		S.finish(H)

/datum/genetics/side_effect
	/// Name of the side effect, to use as a header in the manual.
	var/name
	/// Description of the symptom of the side effect.
	var/symptom
	/// Description of the treatment of the side effect.
	var/treatment
	/// Description of what happens when not treated.
	var/effect
	/// Delay between start() and finish().
	var/duration = 0

/datum/genetics/side_effect/proc/start(mob/living/carbon/human/H)
	// start the side effect, this should give some cue as to what's happening,
	// such as gasping. These cues need to be unique among side-effects.

/datum/genetics/side_effect/proc/finish(mob/living/carbon/human/H)
	// Finish the side-effect. This should first check whether the cure has been
	// applied, and if not, cause bad things to happen.

/datum/genetics/side_effect/genetic_burn
	name = "Genetic Burn"
	symptom = "Subject's skin turns unusualy red."
	treatment = "Inject small dose of dexalin."
	effect = "Subject's skin burns."
	duration = 10*30

/datum/genetics/side_effect/genetic_burn/start(mob/living/carbon/human/H)
	H.emote("me", 1, "starts turning very red..")

/datum/genetics/side_effect/genetic_burn/finish(mob/living/carbon/human/H)
	if(!H.reagents.has_reagent("dexalin"))
		for(var/organ_name in BP_ALL)
			var/obj/item/organ/external/E = H.get_organ(organ_name)
			E.inflict_bodypart_damage(
				burn = 5,
			)

/datum/genetics/side_effect/bone_snap
	name = "Bone Snap"
	symptom = "Subject's limbs tremble notably."
	treatment = "Inject small dose of bicaridine."
	effect = "Subject's bone breaks."
	duration = 10*60

/datum/genetics/side_effect/bone_snap/start(mob/living/carbon/human/H)
		H.emote("me", 1, "'s limbs start shivering uncontrollably.")

/datum/genetics/side_effect/bone_snap/finish(mob/living/carbon/human/H)
	if(!H.reagents.has_reagent("bicaridine"))
		var/organ_name = pick(BP_ALL)
		var/obj/item/organ/external/E = H.get_organ(organ_name)
		E.inflict_bodypart_damage(
			brute = 20,
		)
		E.fracture()

/*/datum/genetics/side_effect/monkey
	name = "Monkey"
	symptom = "Subject starts drooling uncontrollably."
	treatment = "Inject small dose of dylovene."
	effect = "Subject turns into monkey."
	duration = 10*90

/datum/genetics/side_effect/monkey/start(mob/living/carbon/human/H)
		H.emote("me", 1, "has drool running down from [H.gender == MALE ? "his" : H.gender == FEMALE ? "her" : "their"] mouth.")

/datum/genetics/side_effect/monkey/finish(mob/living/carbon/human/H)
		if(!H.reagents.has_reagent("anti_toxin"))
			H.monkeyize()**/

/datum/genetics/side_effect/confuse
	name = "Confuse"
	symptom = "Subject starts drooling uncontrollably."
	treatment = "Inject small dose of dylovene."
	effect = "Subject becomes confused."
	duration = 10*30

/datum/genetics/side_effect/confuse/start(mob/living/carbon/human/H)
	var/datum/gender/T = GLOB.gender_datums[H.get_visible_gender()]
	H.emote("me", 1, "has drool running down from [T.his] mouth.")

/datum/genetics/side_effect/confuse/finish(mob/living/carbon/human/H)
	if(!H.reagents.has_reagent("anti_toxin"))
		H.Confuse(100)
