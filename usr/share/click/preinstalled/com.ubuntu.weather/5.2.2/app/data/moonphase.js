function getMoonPhaseString(forecastDateStart,forecastDateEnd) {
    //moonphase returned as value between 0 and 1,
    //date.date is set to 11:59 am of the day concerned
    //calculate the moonphasevalues for start of day (= 0:00) and end of day (= 23:59) by adding/subtracting 12 hours
    //compare start and end values against moonphasevalues to set the name of the moonphase
    var dayStart = SunCalc.SunCalc.getMoonIllumination(forecastDateStart).phase;
    var dayEnd = SunCalc.SunCalc.getMoonIllumination(forecastDateEnd).phase;
    var moonPhaseString = "";
    var moonEmoji ="";
    var moonImage ="";

    if (dayStart > dayEnd) {
        moonPhaseString = i18n.tr("New moon");
        moonEmoji = "\uD83C\uDF11";
        moonImage = "../graphics/moon-phase-1-new-moon.svg";
    } else if (dayStart > 0.00 && dayEnd < 0.25) {
        moonPhaseString = i18n.tr("Waxing Crescent");
        moonEmoji = "\uD83C\uDF12";
        moonImage = "../graphics/moon-phase-2-waxing-crescent.svg";
    } else if (dayStart <= 0.25 && dayEnd >= 0.25) {
        moonPhaseString = i18n.tr("First Quarter");
        moonEmoji = "\uD83C\uDF13";
        moonImage = "../graphics/moon-phase-3-first-quarter.svg";
    } else if (dayStart > 0.25 && dayEnd < 0.50) {
        moonPhaseString = i18n.tr("Waxing Gibbous");
        moonEmoji = "\uD83C\uDF14";
        moonImage = "../graphics/moon-phase-4-waxing-gibbous.svg";
    } else if (dayStart <= 0.50 && dayEnd >= 0.50) {
        moonPhaseString = i18n.tr("Full moon");
        moonEmoji = "\uD83C\uDF15";
        moonImage = "../graphics/moon-phase-5-full-moon.svg";
    } else if (dayStart > 0.50 && dayEnd < 0.75) {
        moonPhaseString = i18n.tr("Waning Gibbous");
        moonEmoji = "\uD83C\uDF16";
        moonImage = "../graphics/moon-phase-6-waning-gibbous.svg";
    } else if (dayStart <= 0.75 && dayEnd >= 0.75) {
        moonPhaseString = i18n.tr("Last Quarter");
        moonEmoji = "\uD83C\uDF17";
        moonImage = "../graphics/moon-phase-7-third-quarter.svg";
    } else if (dayStart > 0.75 && dayEnd < 1.00) {
        moonPhaseString = i18n.tr("Waning Crescent");
        moonEmoji = "\uD83C\uDF18";
        moonImage = "../graphics/moon-phase-8-waning-crescent.svg";
    } else {
        moonPhaseString = i18n.tr("calculation error");
    }

    return {
      moonphase: moonPhaseString,
      moonemoji: moonEmoji,
      moonimage: moonImage,
    }
}
