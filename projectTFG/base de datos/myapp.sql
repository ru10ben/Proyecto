-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-12-2015 a las 18:43:11
-- Versión del servidor: 5.6.26
-- Versión de PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `myapp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `answer`
--

CREATE TABLE IF NOT EXISTS `answer` (
  `id` int(11) NOT NULL,
  `idQuest` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `idProj` int(11) NOT NULL,
  `answer` enum('No','Yes') COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `answer`
--

INSERT INTO `answer` (`id`, `idQuest`, `idProj`, `answer`) VALUES
(1, 'Q01', 60, 'No'),
(2, 'Q02', 60, 'No'),
(3, 'Q02.1', 60, 'No'),
(4, 'Q03', 60, 'No'),
(5, 'Q04', 60, 'No'),
(6, 'Q05', 60, 'No'),
(7, 'Q06', 60, 'No'),
(8, 'Q07', 60, 'No'),
(9, 'Q08', 60, 'No'),
(10, 'Q09', 60, 'No'),
(11, 'Q10', 60, 'No'),
(12, 'Q11', 60, 'No'),
(13, 'Q01', 61, 'No'),
(14, 'Q02', 61, 'No'),
(15, 'Q02.1', 61, 'No'),
(16, 'Q03', 61, 'No'),
(17, 'Q04', 61, 'No'),
(18, 'Q05', 61, 'No'),
(19, 'Q06', 61, 'No'),
(20, 'Q07', 61, 'No'),
(21, 'Q08', 61, 'No'),
(22, 'Q09', 61, 'No'),
(23, 'Q10', 61, 'No'),
(24, 'Q11', 61, 'No');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clause`
--

CREATE TABLE IF NOT EXISTS `clause` (
  `id` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `title` varchar(140) COLLATE utf8_spanish_ci NOT NULL,
  `text` varchar(2500) COLLATE utf8_spanish_ci NOT NULL,
  `should` enum('No','Si') COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clause`
--

INSERT INTO `clause` (`id`, `title`, `text`, `should`) VALUES
('05.1.2.1', 'Closed functionality', 'Where ICT has closed functionality, it shall meet the requirements set out in clauses 5.2 to 13, as applicable.', 'No'),
('05.1.2.2', 'Assistive technology', 'Where ICT has closed functionality, that closed functionality shall be operable without requiring the user to attach, connect or install assistive technology and shall conform to the generic requirements of clauses 5.1.3 to 5.1.7 as applicable. Personal headsets and induction loops shall not be classed as assistive technology for the purpose of this clause.', 'No'),
('05.1.3.01', 'Non-visual access. General', 'Where visual information is needed to enable the use of those functions of ICT that are closed to assistive technologies for screen reading, ICT shall provide at least one mode of operation using non-visual access to enable the use of those functions.', 'No'),
('05.1.3.02', 'Auditory output delivery including speech', 'Where auditory output is provided as non-visual access to closed functionality, the auditory output shall be delivered:\r\na) either directly by a mechanism included in or provided with the ICT;\r\nb) or by a personal headset that can be connected through a 3,5 mm audio jack, or an industry standard connection, without requiring the use of vision.', 'No'),
('05.1.3.03', 'Auditory output correlation (recommendation)', 'Where auditory output is provided as non-visual access to closed functionality, and where information is displayed on the screen, the ICT should provide auditory information that allows the user to correlate the audio with the information displayed on the screen.', 'Si'),
('05.1.3.04', 'Speech output user control', 'Where speech output is provided as non-visual access to closed functionality, the speech output shall be capable of being interrupted and repeated when requested by the user, where permitted by security requirements.', 'No'),
('05.1.3.05', 'Speech output automatic interruption', 'Where speech output is provided as non-visual access to closed functionality, the ICT shall interrupt current speech output when a user action occurs and when new speech output begins.', 'No'),
('05.1.3.06', 'Speech output for non-text content', 'Where ICT presents non-text content, the alternative for non-text content shall be presented to users via speech output unless the non-text content is pure decoration or is used only for visual formatting. The speech output for non-text content shall follow the guidance for "text alternative" described in WCAG 2.0 [4] Success Criterion 1.1.1.', 'No'),
('05.1.3.07', 'Speech output for video information', 'Where pre-recorded video content is needed to enable the use of closed functions of ICT and where speech output is provided as non-visual access to closed functionality, the speech output shall present equivalent information for the pre-recorded video content.', 'No'),
('05.1.3.08', 'Masked entry', 'Where auditory output is provided as non-visual access to closed functionality, and the characters displayed are masking characters, the auditory output shall not be a spoken version of the characters entered unless the auditory output is known to be delivered only to a mechanism for private listening, or the user explicitly chooses to allow non-private auditory output.', 'No'),
('05.1.3.09', 'Private access to personal data', 'Where auditory output is provided as non-visual access to closed functionality, and the output contains data that is considered to be private according to the applicable privacy policy, the corresponding auditory output shall only be delivered through a mechanism for private listening that can be connected without requiring the use of vision, or through any other mechanism explicitly chosen by the user.', 'No'),
('05.1.3.10', 'Non-interfering audio output', 'Where auditory output is provided as non-visual access to closed functionality, the ICT shall not automatically play, at the same time, any interfering audible output that lasts longer than three seconds.', 'No'),
('05.1.3.11', 'Private listening volume', 'Where auditory output is provided as non-visual access to closed functionality and is delivered through a mechanism for private listening, ICT shall provide at least one non-visual mode of operation for controlling the volume.', 'No'),
('05.1.3.12', 'Speaker volume', 'Where auditory output is provided as non-visual access to closed functionality and is delivered through speakers on ICT, a non-visual incremental volume control shall be provided with output amplification up to a level of at least 65 dBA (-29 dBPaA).', 'No'),
('05.1.3.13', 'Volume reset', 'Where auditory output is provided as non-visual access to closed functionality, a function that resets the volume to be at a level of 65 dBA or less after every use, shall be provided, unless the ICT is dedicated to a single user.', 'No'),
('05.1.3.14', 'Spoken languages', 'Where speech output is provided as non-visual access to closed functionality, speech output shall be in the same human language as the displayed content provided, except:\r\na) for proper names, technical terms, words of indeterminate language, and words or phrases that have become part of the vernacular of the immediately surrounding text;\r\nb) where the content is generated externally and not under the control of the ICT vendor, clause 5.1.3.14 shall not be required to apply for languages not supported by the ICT''s speech synthesizer;\r\nc) for displayed languages that cannot be selected using non-visual access;\r\nd) where the user explicitly selects a speech language that is different from the language of the displayed content.', 'No'),
('05.1.3.15', 'Non-visual error identification', 'Where speech output is provided as non-visual access to closed functionality and an input error is automatically detected, speech output shall identify and describe the item that is in error.', 'No'),
('05.1.3.16', 'Receipts, tickets, and transactional outputs', 'Where ICT is closed to visual access and provides receipts, tickets or other outputs as a result of a self-service transaction, speech output shall be provided which shall include all information necessary to complete or verify the transaction. In the case of ticketing machines, printed copies of itineraries and maps shall not be required to be audible.', 'No'),
('05.1.4', 'Functionality closed to text enlargement', 'Where any functionality of ICT is closed to the text enlargement features of platform or assistive technology, the ICT shall provide a mode of operation where the text and images of text necessary for all functionality is displayed in such a way that a non-accented capital "H" subtends an angle of at least 0,7 degrees at a viewing distance specified by the supplier.', 'No'),
('05.1.5', 'Visual output for auditory information', 'Where pre-recorded auditory information is needed to enable the use of closed functions of ICT, the ICT shall provide visual information that is equivalent to the pre-recorded auditory output.', 'No'),
('05.1.6.1', 'Closed functionality', 'Where ICT functionality is closed to keyboards or keyboard interfaces, all functionality shall be operable without vision as required by clause 5.1.3.', 'No'),
('05.1.6.2', 'Input focus', 'Where ICT functionality is closed to keyboards or keyboard interfaces and where input focus can be moved to a user interface element, it shall be possible to move the input focus away from that element using the same mechanism, in order to avoid trapping the input focus.', 'No'),
('05.2', 'Activation of accessibility features', 'Where ICT has documented accessibility features, it shall be possible to activate those documented accessibility features that are required to meet a specific need without relying on a method that does not support that need.', 'No'),
('05.3', 'Biometrics', 'Where ICT uses biological characteristics, it shall not rely on the use of a particular biological characteristic as the only means of user identification or for control of ICT.', 'No'),
('05.4', 'Preservation of accessibility information during conversion', 'Where ICT converts information or communication it shall preserve all documented non-proprietary information that is provided for accessibility, to the extent that such information can be contained in or supported by the destination format.', 'No'),
('05.5.1', 'Means of operation', 'Where ICT has operable parts that require grasping, pinching, or twisting of the wrist to operate, an accessible alternative means of operation that does not require these actions shall be provided.', 'No'),
('05.5.2', 'Operable parts discernibility', 'Where ICT has operable parts, it shall provide a means to discern each operable part, without requiring vision and without performing the action associated with the operable part.', 'No'),
('05.6.1', 'Tactile or auditory status', 'Where ICT has a locking or toggle control and that control is visually presented to the user, the ICT shall provide at least one mode of operation where the status of the control can be determined either through touch or sound without operating the control.', 'No'),
('05.6.2', 'Visual status', 'Where ICT has a locking or toggle control and the control is non-visually presented to the user, the ICT shall provide at least one mode of operation where the status of the control can be visually determined when the control is presented.', 'No'),
('05.7', 'Key repeat', 'Where ICT with key repeat is provided and the key repeat cannot be turned off:\r\na) the delay before the key repeat shall be adjustable to at least 2 seconds; and\r\nb) the key repeat rate shall be adjustable down to one character per 2 seconds.', 'No'),
('05.8', 'Double-strike key acceptance', 'Where a keyboard or keypad is provided, the delay after any keystroke, during which an additional key-press will not be accepted if it is identical to the previous keystroke, shall be adjustable up to at least 0,5 seconds.', 'No'),
('05.9', 'Simultaneous user actions', 'Where ICT uses simultaneous user actions for its operation, such ICT shall provide at least one mode of operation that does not require simultaneous user actions to operate the ICT.', 'No'),
('06.1', 'Audio bandwidth for speech (recommendation)', 'Where ICT provides two-way voice communication, in order to provide good audio quality, that ICT should be able to encode and decode two-way voice communication with a frequency range with an upper limit of at least 7 000 Hz.', 'Si'),
('06.2.1.1', 'RTT communication', 'Where ICT supports two-way voice communication in a specified context of use, the ICT shall allow a user to communicate with another user by RTT.', 'No'),
('06.2.1.2', 'Concurrent voice and text', 'Where ICT supports two-way voice communication in a specified context of use, and enables a user to communicate with another user by RTT, it shall provide a mechanism to select a mode of operation which allows concurrent voice and text.', 'No'),
('06.2.2.1', 'Visually distinguishable display', 'Where ICT has RTT send and receive capabilities, displayed sent text shall be visually differentiated from and separated from received text.', 'No'),
('06.2.2.2', 'Programmatically determinable send and receive direction', 'Where ICT has RTT send and receive capabilities, the send/receive direction of transmitted text shall be programmatically determinable, unless the RTT has closed functionality.', 'No'),
('06.2.3', 'Interoperability', 'Where ICT with RTT functionality interoperates with other ICT with RTT functionality (as required by 6.2.1.1) they shall support at least one of the four RTT interoperability mechanisms described below:\r\na) ICT interoperating over the Public Switched Telephone Network (PSTN), with other ICT that directly connects to the PSTN as described in Recommendation ITU-T V.18 [i.23] or any of its annexes for text telephony signals at the PSTN interface;\r\nb) ICT interoperating with other ICT using VOIP with Session Initiation Protocol (SIP) and using real-time text that conforms to IETF RFC 4103 [i.13];\r\nc) ICT interoperating with other ICT using RTT that conforms with the IP Multimedia Sub-System (IMS) set of protocols specified in ETSI TS 126 114 [i.10], ETSI TS 122 173 [i.11] and ETSI TS 134 229 [i.12];\r\nd) ICT interoperating with other ICT using a relevant and applicable common specification for RTT exchange that is published and available. This common specification shall include a method for indicating loss or corruption of characters.', 'No'),
('06.2.4', 'Real-time text responsiveness', 'Where ICT utilises RTT input, that RTT input shall be transmitted to the ICT network supporting RTT within 1 second of the input entry.', 'No'),
('06.3', 'Caller ID', '', 'No'),
('06.4', 'Alternatives to voice-based services (recommendation)', 'Where ICT provides real-time voice-based communication and also provides voice mail, auto-attendant, or interactive voice response facilities, the ICT should offer users a means to access the information and carry out the tasks provided by the ICT without the use of hearing or speech.', 'Si'),
('06.5.2', 'Resolution', 'Where ICT that provides two-way voice communication includes real-time video functionality, the ICT:\r\na) shall support at least QCIF resolution;\r\nb) should preferably support at least CIF resolution.', 'No'),
('06.5.3', 'Frame rate', 'Where ICT that provides two-way voice communication includes real-time video functionality, the ICT:\r\na) shall support a frame rate of at least 12 frames per second (FPS);\r\nb) should preferably support a frame rate of at least 20 frames per second (FPS) with or without sign language in the video stream.', 'No'),
('06.5.4', 'Synchronization between audio and video (recommendation)', 'Where ICT that provides two-way voice communication includes real-time video functionality, the ICT should ensure a maximum time difference of 100 ms between the speech and video presented to the user.', 'Si'),
('06.6', 'Alternatives to video-based services (recommendation)', 'Where ICT provides real-time video-based communication and also provides answering machine, auto attendant or interactive response facilities, the ICT should offer users a means to access the information and carry out the tasks related to these facilities:\r\na) for audible information, without the use of hearing;\r\nb) for spoken commands, without the use of speech;\r\nc) for visual information, without the use of vision.', 'Si'),
('07.1.1', 'Captioning playback', 'Where ICT displays video with synchronized audio, it shall have a mode of operation to display the available captions. Where closed captions are provided as part of the content, the ICT shall allow the user to choose to display the captions.', 'No'),
('07.1.2', 'Captioning synchronization', 'Where ICT displays captions, the mechanism to display captions shall preserve synchronization between the audio and the corresponding captions.', 'No'),
('07.1.3', 'Preservation of captioning', 'Where ICT transmits, converts or records video with synchronized audio, it shall preserve caption data such that it can be displayed in a manner consistent with clauses 7.1.1 and 7.1.2.\r\nAdditional presentational aspects of the text such as screen position, text colours, text style and text fonts may convey meaning, based on regional conventions. Altering these presentational aspects could change the meaning and should be avoided wherever possible.', 'No'),
('07.2.1', 'Audio description playback', 'Where ICT displays video with synchronized audio, it shall provide a mechanism to select and play available audio description to the default audio channel.\r\nWhere video technologies do not have explicit and separate mechanisms for audio description, an ICT is deemed to satisfy this requirement if the ICT enables the user to select and play several audio tracks.', 'No'),
('07.2.2', 'Audio description synchronization', 'Where ICT has a mechanism to play audio description, it shall preserve the synchronization between the audio/visual content and the corresponding audio description.', 'No'),
('07.2.3', 'Preservation of audio description', 'Where ICT transmits, converts, or records video with synchronized audio, it shall preserve audio description data such that it can be played in a manner consistent with clauses 7.2.1 and 7.2.2.', 'No'),
('07.3', 'User controls for captions and audio description', 'Where ICT primarily displays materials containing video with associated audio content, user controls to activate subtitling and audio description shall be provided to the user at the same level of interaction (i.e. the number of steps to complete the task) as the primary media controls.', 'No'),
('08.1.2', 'Standard connections', 'Where an ICT provides user input or output device connection points, the ICT shall provide at least one input and/or output connection that conforms to an industry standard non-proprietary format, directly or through the use of commercially available adapters.', 'No'),
('08.1.3', 'Colour', 'Where the ICT has hardware aspects that use colour, colour shall not be used as the only visual means of conveying information, indicating an action, prompting a response, or distinguishing a visual element.', 'No'),
('08.2.1.1', 'Speech volume range', 'Where ICT hardware has speech output, it shall provide a means to adjust the speech output volume level over a range of at least 18 dB.', 'No'),
('08.2.1.2', 'Incremental volume control', 'Where ICT hardware has speech output and its volume control is incremental, it shall provide at least one intermediate step of 12 dB gain above the lowest volume setting.', 'No'),
('08.2.2.1', 'Fixed-line devices', 'Where ICT hardware is a fixed-line communication device with speech output and which is normally held to the ear and which carries the "T" symbol specified in ETSI ETS 300 381 [1], it shall provide a means of magnetic coupling which meets the requirements of ETSI ES 200 381-1 [2].', 'No'),
('08.2.2.2', 'Wireless communication devices', 'Where ICT hardware is a wireless communication device with speech output which is normally held to the ear, it shall provide a means of magnetic coupling to hearing technologies which meets the requirements of ETSI ES 200 381-2 [3].', 'No'),
('08.3.2.1', 'Change in level (recommendation)', 'Where there is a change in floor level that is integral to the ICT then it should be ramped with a slope no steeper than\r\n1:48.', 'Si'),
('08.3.2.2', 'Clear floor or ground space (recommendation)', 'Where the operating area is integral to the ICT, it should provide a clear floor area that has the minimum dimensions of\r\n760 mm (30 inches) by 1 220 mm (48 inches) from which to operate the ICT.', 'Si'),
('08.3.2.3.1', 'General (recommendation)', 'Where the access space is integral to the ICT, at least one full side of the space should be unobstructed.', 'Si'),
('08.3.2.3.2', 'Forward approach (recommendation)', 'Where the operating area is inside an alcove integral to the ICT, the alcove is deeper than 610 mm (24 inches), and\r\nwhere a forward approach is necessary, the dimension of the access space should be a minimum of 915 mm (36 inches)\r\nwide.', 'Si'),
('08.3.2.3.3', 'Parallel approach (recommendation)', 'Where the operating area is inside an alcove integral to the ICT, the alcove is deeper than 380 mm (15 inches), and where a parallel approach is possible, the dimension of the access space should be a minimum of 1 525 mm (60 inches) wide.', 'Si'),
('08.3.2.4', 'Knee and toe clearance width (recommendation)', 'Where the space under an obstacle that is integral to the ICT is part of access space, the clearance should be at least 760 mm (30 inches) wide.', 'Si'),
('08.3.2.5', 'Toe clearance (recommendation)', 'Where an obstacle is integral to the ICT, a space under the obstacle that is less than 230 mm (9 inches) above the floor is considered toe clearance and should:\r\na) extend 635 mm (25 inches) maximum under the whole obstacle;\r\nb) provide a space at least 430 mm (17 inches) deep and 230 mm above the floor under the obstacle;\r\nc) extend no more than150 mm (6 inches) beyond any obstruction at 230 mm (9 inches) above the floor.', 'Si'),
('08.3.2.6', 'Knee clearance (recommendation)', 'Where an obstacle is integral to the ICT, the space under the obstacle that is between 230 mm and 685 mm above the floor is considered knee clearance and should:\r\na) extend no more than 635 mm (25 inches) under the obstacle at a height of 230 mm (9 inches) above the floor;\r\nb) extend at least 280 mm (11 inches) under the obstacle at a height of 230 mm (9 inches) above the floor;\r\nc) extend at least 205 mm (8 inches) under the obstacle at a height of 685 mm (27 inches) above the floor;\r\nd) be permitted to be reduced in depth at a rate of 25 mm (1 inch) for each 150 mm (6 inches) in height.', 'Si'),
('08.3.3.1.1', 'Unobstructed high forward reach (recommendation)', 'Where the access space is integral to the ICT and the forward reach is unobstructed, the essential controls should be located no higher than 1 220 mm (48 inches) above the floor of the access space.', 'Si'),
('08.3.3.1.2', 'Unobstructed low forward reach (recommendation)', 'Where the access space is integral to the ICT and the forward reach is unobstructed, the essential controls should be located no lower than 380 mm (15 inches) above the floor of the access space.', 'Si'),
('08.3.3.1.3.1', 'Clear floor space (recommendation)', 'Where the access space is integral to the ICT and has an obstruction which is integral to the ICT which hinders the access to any essential controls, the ICT should provide a clear floor space which extends beneath the obstructing element for a distance not less than the required reach depth over the obstruction.', 'Si'),
('08.3.3.1.3.2', 'Obstructed (<510 mm) forward reach (recommendation)', 'Where the access space is integral to the ICT and has an obstruction which is integral to the ICT and which is less than 510 mm (20 inches), the forward reach to all essential controls should be no higher than 1 220 mm (48 inches) above the floor contact of the ICT.', 'Si'),
('08.3.3.1.3.3', 'Obstructed (<635 mm) forward reach (recommendation)', 'Where the access space is integral to the ICT and has an obstruction which is integral to the ICT and which is greater than 510 mm (20 inches) and less than 635 mm (25 inches) maximum, the forward reach to all essential controls should be no higher than 1 120 mm (44 inches) above the floor contact of the ICT.', 'Si'),
('08.3.3.2.1', 'Unobstructed high side reach (recommendation)', 'Where the access space is integral to the ICT, allows a parallel approach, and the side reach is unobstructed or obstructed by an element integral to the ICT which is less than 255 mm (10 inches), all essential controls should be within a high side reach which is less than or equal to 1 220 mm (48 inches) above the floor of the access space.', 'Si'),
('08.3.3.2.2', 'Unobstructed low side reach (recommendation)', 'Where the access space is integral to the ICT, allows a parallel approach, and the side reach is unobstructed or obstructed by an element integral to the ICT which is less than 255 mm (10 inches), all essential controls should be within a low side reach which is greater than or equal to 380 mm (15 inches) above the floor of the access space.', 'Si'),
('08.3.3.2.3.1', 'Obstructed (<= 255 mm) side reach (recommendation)', 'Where the access space is integral to the ICT, allows a parallel approach and has an obstruction which is integral to the ICT, the height of the obstruction should be less than 865 mm (34 inches). Where the depth of the obstruction is less than or equal to 255 mm (10 inches), the high side reach to all essential controls should be no higher than 1 220 mm (48 inches) above the floor of the access space.', 'Si'),
('08.3.3.2.3.2', 'Obstructed (<= 610 mm) side reach (recommendation)', 'Where the access space is integral to the ICT, allows a parallel approach and has an obstruction which is integral to the ICT, the height of the obstruction should be less than 865 mm (34 inches). Where the depth of the obstruction is greater than 255 mm (10 inches) with a maximum depth of 610 mm (24 inches), the high side reach to all essential controls should be no higher than 1 170 mm (46 inches) above the floor of the access space.', 'Si'),
('08.3.4', 'Visibility (recommendation)', 'Where the operating area is integral to the ICT, and a display screen is provided, information on the screen should be legible from a point located 1 015 mm (40 inches) above the centre of the floor of the operating area (as defined in clause 8.3.2.2).', 'Si'),
('08.3.5', 'Installation instructions (recommendation)', 'Where an ICT is intended to be installed, instructions should be made available which outline a method to install the ICT in a manner that ensures that the dimensions of the integral spaces of the ICT conform to clauses 8.3.2 to 8.3.4.', 'Si'),
('08.4.1', 'Numeric keys', 'Where provided, physical numeric keys arranged in a rectangular keypad layout shall have the number five key tactilely distinct from the other keys of the keypad.', 'No'),
('08.4.2.1', 'Means of operation of mechanical parts', 'Where a control requires grasping, pinching, or twisting of the wrist to operate it, an accessible alternative means of operation that does not require these actions shall be provided.', 'No'),
('08.4.2.2', 'Force of operation of mechanical parts', 'Where a control requires a force greater than 22,2 N to operate it, an accessible alternative means of operation that requires a force less than 22,2 N shall be provided.', 'No'),
('08.4.3', 'Keys, tickets and fare cards', 'Where ICT provides keys, tickets or fare cards, and their orientation is important for further use, they shall have an orientation that is tactilely discernible.', 'No'),
('08.5', 'Tactile indication of speech mode', 'Where ICT is designed for shared use and speech output is available, a tactile indication of the means to initiate the speech mode of operation shall be provided.', 'No'),
('09.2.01', 'Non-text content', 'Where ICT is a web page, it shall satisfy WCAG 2.0 Success Criterion 1.1.1 Non-text content [4].', 'No'),
('09.2.02', 'Audio-only and video-only (pre-recorded', 'Where ICT is a web page, it shall satisfy WCAG 2.0 Success Criterion 1.2.1 Audio-only and Video-only (Pre-recorded) [4].', 'No'),
('09.2.03', 'Captions (pre-recorded)', 'Where ICT is a web page, it shall satisfy WCAG 2.0 Success Criterion 1.2.2 Captions (Pre-recorded) [4].', 'No'),
('09.2.04', 'Audio description or media alternative (pre-recorded)', 'Where ICT is a web page, it shall satisfy WCAG 2.0 Success Criterion 1.2.3 Audio Description or Media Alternative (Pre-recorded) [4].', 'No'),
('09.2.05', 'Captions (live)', 'Where ICT is a web page, it shall satisfy WCAG 2.0 Success Criterion 1.2.4 Captions (Live) [4].', 'No'),
('09.2.06', 'Audio description (pre-recorded)', 'Where ICT is a web page, it shall satisfy WCAG 2.0 Success Criterion 1.2.5 Audio Description (Pre-recorded) [4].', 'No'),
('09.2.07', 'Info and relationships', 'Where ICT is a web page, it shall satisfy WCAG 2.0 Success Criterion 1.3.1 Info and Relationships [4].', 'No'),
('09.2.08', 'Meaningful sequence', 'Where ICT is a web page, it shall satisfy WCAG 2.0 Success Criterion 1.3.2 Meaningful Sequence [4].', 'No'),
('09.2.09', 'Sensory characteristics', 'Where ICT is a web page, it shall satisfy WCAG 2.0 Success Criterion 1.3.3 Sensory Characteristics [4].', 'No'),
('09.2.10', 'Use of colour', 'Where ICT is a web page, it shall satisfy WCAG 2.0 Success Criterion 1.4.1 Use of Color [4].', 'No'),
('09.2.11', 'Audio control', 'Where ICT is a web page, it shall satisfy WCAG 2.0 Success Criterion 1.4.2 Audio Control [4].', 'No'),
('09.2.12', 'Contrast (minimum)', 'Where ICT is a web page, it shall satisfy WCAG 2.0 Success Criterion 1.4.3 Contrast (Minimum) [4].', 'No'),
('09.2.13', 'Resize text', 'Where ICT is a web page, it shall satisfy WCAG 2.0 Success Criterion 1.4.4 Resize text [4].', 'No'),
('09.2.14', 'Images of text', 'Where ICT is a web page, it shall satisfy WCAG 2.0 Success Criterion 1.4.5 Images of Text [4].', 'No'),
('09.2.15', 'Keyboard', 'Where ICT is a web page, it shall satisfy WCAG 2.0 Success Criterion 2.1.1 Keyboard [4].', 'No'),
('09.2.16', 'No keyboard trap', 'Where ICT is a web page, it shall satisfy WCAG 2.0 Success Criterion 2.1.2 No Keyboard Trap [4].', 'No'),
('09.2.17', 'Timing adjustable', 'Where ICT is a web page, it shall satisfy WCAG 2.0 Success Criterion 2.2.1 Timing Adjustable [4].', 'No'),
('09.2.18', 'Pause, stop, hide', 'Where ICT is a web page, it shall satisfy WCAG 2.0 Success Criterion 2.2.2 Pause, Stop, Hide [4].', 'No'),
('09.2.19', 'Three flashes or below threshold', 'Where ICT is a web page, it shall satisfy WCAG 2.0 Success Criterion 2.3.1 Three Flashes or Below Threshold [4].', 'No'),
('09.2.20', 'Bypass blocks', 'Where ICT is a web page, it shall satisfy WCAG 2.0 Success Criterion 2.4.1 Bypass Blocks [4].', 'No'),
('09.2.21', 'Page titled', 'Where ICT is a web page, it shall satisfy WCAG 2.0 Success Criterion 2.4.2 Page Titled [4].', 'No'),
('09.2.22', 'Focus order', 'Where ICT is a web page, it shall satisfy WCAG 2.0 Success Criterion 2.4.3 Focus Order [4].', 'No'),
('09.2.23', 'Link purpose (in context)', 'Where ICT is a web page, it shall satisfy WCAG 2.0 Success Criterion 2.4.4 Link Purpose (In Context) [4].', 'No'),
('09.2.24', 'Multiple ways', 'Where ICT is a web page, it shall satisfy WCAG 2.0 Success Criterion 2.4.5 Multiple Ways [4].', 'No'),
('09.2.25', 'Headings and labels', 'Where ICT is a web page, it shall satisfy WCAG 2.0 Success Criterion 2.4.6 Headings and Labels [4].', 'No'),
('09.2.26', 'Focus visible', 'Where ICT is a web page, it shall satisfy WCAG 2.0 Success Criterion 2.4.7 Focus Visible [4].', 'No'),
('09.2.27', 'Language of page', 'Where ICT is a web page, it shall satisfy WCAG 2.0 Success Criterion 3.1.1 Language of Page [4].', 'No'),
('09.2.28', 'Language of parts', 'Where ICT is a web page, it shall satisfy WCAG 2.0 Success Criterion 3.1.2 Language of Parts [4].', 'No'),
('09.2.29', 'On focus', 'Where ICT is a web page, it shall satisfy WCAG 2.0 Success Criterion 3.2.1 On Focus [4].', 'No'),
('09.2.30', 'On input', 'Where ICT is a web page, it shall satisfy WCAG 2.0 Success Criterion 3.2.2 On Input [4].', 'No'),
('09.2.31', 'Consistent navigation', 'Where ICT is a web page, it shall satisfy WCAG 2.0 Success Criterion 3.2.3 Consistent Navigation [4].', 'No'),
('09.2.32', 'Consistent identification', 'Where ICT is a web page, it shall satisfy WCAG 2.0 Success Criterion 3.2.4 Consistent Identification [4].', 'No'),
('09.2.33', 'Error identification', 'Where ICT is a web page, it shall satisfy WCAG 2.0 Success Criterion 3.3.1 Error Identification [4].', 'No'),
('09.2.34', 'Labels or instructions', 'Where ICT is a web page, it shall satisfy WCAG 2.0 Success Criterion 3.3.2 Labels or Instructions [4].', 'No'),
('09.2.35', 'Error suggestion', 'Where ICT is a web page, it shall satisfy WCAG 2.0 Success Criterion 3.3.3 Error Suggestion [4].', 'No'),
('09.2.36', 'Error prevention (legal,financial,data)', 'Where ICT is a web page, it shall satisfy WCAG 2.0 Success Criterion 3.3.4 Error Prevention (Legal, Financial, Data) [4].', 'No'),
('09.2.37', 'Parsing', 'Where ICT is a web page, it shall satisfy WCAG 2.0 Success Criterion 4.1.1 Parsing [4].', 'No'),
('09.2.38', 'Name, role, value', 'Where ICT is a web page, it shall satisfy WCAG 2.0 Success Criterion 4.1.2 Name, Role, Value [4].', 'No'),
('09.3', 'WCAG 2.0 conformance requirements', 'Where ICT is a web page, it shall satisfy all the following five WCAG 2.0 conformance requirements at Level AA [4].\r\n1) Conformance level\r\n2) Full pages\r\n3) Complete processes\r\n4) Only Accessibility-Supported Ways of Using Technologies\r\n5) Non-interference', 'No'),
('10.2.01', 'Non-text content', 'Where ICT is a non-web document, it shall satisfy the success criterion in Table 10.1.\r\nTable 10.1: Document success criterion: Non-text content\r\nAll non-text content that is presented to the user has a text alternative that serves the equivalent purpose, except for the situations listed below:\r\n-Controls, Input: If non-text content is a control or accepts user input, then it has a name that describes its purpose. (Refer to WCAG 2.0 Guideline 4.1 [4] for additional requirements for controls and content that accepts user input.)\r\n-Time-Based Media: If non-text content is time-based media, then text alternatives at least provide descriptive identification of the non-text content. (Refer to WCAG 2.0 Guideline 1.2 [4] for additional requirements for media.)\r\n-Test: If non-text content is a test or exercise that would be invalid if presented in text, then text alternatives at least provide descriptive identification of the non-text content.\r\n-Sensory: If non-text content is primarily intended to create a specific sensory experience, then text alternatives at least provide descriptive identification of the non-text content.\r\n-CAPTCHA: If the purpose of non-text content is to confirm that content is being accessed by a person rather than a computer, then text alternatives that identify and describe the purpose of the non-text content are provided, and alternative forms of CAPTCHA using output modes for different types of sensory perception are provided to accommodate different disabilities.\r\n-Decoration, Formatting, Invisible: If non-text content is pure decoration, is used only for visual formatting, or is not presented to users, then it is implemented in a way that it can be ignored by assistive technology.', 'No'),
('10.2.02', 'Audio-only and video-only (pre-recorded', 'Where ICT is a non-web document, it shall satisfy the success criterion in Table 10.2.\r\nTable 10.2: Document success criterion: Audio-only and video-only (pre-recorded)\r\nFor pre-recorded audio-only and pre-recorded video-only media, the following are true, except when the audio or video is a media alternative for text and is clearly labelled as such:\r\n-Pre-recorded Audio-only: An alternative for time-based media is provided that presents equivalent information for pre-recorded audio-only content.\r\n-Pre-recorded Video-only: Either an alternative for time-based media or an audio track is provided that presents equivalent information for pre-recorded video-only content.', 'No'),
('10.2.03', 'Captions (pre-recorded)', 'Where ICT is a non-web document, it shall satisfy the success criterion in Table 10.3.\r\nTable 10.3: Document success criterion: Captions (pre-recorded)\r\nCaptions are provided for all pre-recorded audio content in synchronized media, except when the media is a media alternative for text and is clearly labeled as such.', 'No'),
('10.2.04', 'Audio description or media alternative (pre-recorded)', 'Where ICT is a non-web document, it shall satisfy the success criterion in Table 10.4.\r\nTable 10.4: Document success criterion: Audio description or media alternative (pre-recorded)\r\nAn alternative for time-based media or audio description of the pre-recorded video content is provided for synchronized media, except when the media is a media alternative for text and is clearly labeled as such.', 'No'),
('10.2.05', 'Captions (live)', 'Where ICT is a non-web document, it shall satisfy the success criterion in Table 10.5.\r\nTable 10.5: Document success criterion: Captions (live)\r\nCaptions are provided for all live audio content in synchronized media.', 'No'),
('10.2.06', 'Audio description (pre-recorded)', 'Where ICT is a non-web document, it shall satisfy the success criterion in Table 10.6.\r\nTable 10.6: Document success criterion: Audio description (pre-recorded)\r\nAudio description is provided for all pre-recorded video content in synchronized media.', 'No'),
('10.2.07', 'Info and relationships', 'Where ICT is a non-web document, it shall satisfy the success criterion in Table 10.7.\r\nTable 10.7: Document success criterion: Info and relationships\r\nInformation, structure, and relationships conveyed through presentation can be programmatically determined or are available in text.', 'No'),
('10.2.08', 'Meaningful sequence', 'Where ICT is a non-web document, it shall satisfy the success criterion in Table 10.8.\r\nTable 10.8: Document success criterion: Meaningful sequence\r\nWhen the sequence in which content is presented affects its meaning, a correct reading sequence can be programmatically determined.', 'No'),
('10.2.09', 'Sensory characteristics', 'Where ICT is a non-web document, it shall satisfy the success criterion in Table 10.9.\r\nTable 10.9: Document success criterion: Sensory characteristics\r\nInstructions provided for understanding and operating content do not rely solely on sensory characteristics of components such as shape, size, visual location, orientation, or sound.', 'No'),
('10.2.10', 'Use of colour', 'Where ICT is a non-web document, it shall satisfy the success criterion in Table 10.10.\r\nTable 10.10: Document success criterion: Use of colour\r\nColour is not used as the only visual means of conveying information, indicating an action, prompting a response, or distinguishing a visual element.', 'No'),
('10.2.11', 'Audio control', 'Where ICT is a non-web document, it shall satisfy the success criterion in Table 10.11.\r\nTable 10.11: Document success criterion: Audio control\r\nIf any audio in a document plays automatically for more than 3 seconds, either a mechanism is available to pause or stop the audio, or a mechanism is available to control audio volume independently from the overall system volume level.', 'No'),
('10.2.12', 'Contrast (minimum)', 'Where ICT is a non-web document, it shall satisfy the success criterion in Table 10.12.\r\nTable 10.12: Document success criterion: Contrast (minimum)\r\nThe visual presentation of text and images of text has a contrast ratio of at least 4.5:1, except for the following:\r\n-Large Text: Large-scale text and images of large-scale text have a contrast ratio of at least 3:1.\r\n-Incidental: Text or images of text that are part of an inactive user interface component, that are pure decoration, that are not visible to anyone, or that are part of a picture that contains significant other visual content, have no contrast requirement.\r\n-Logotypes: Text that is part of a logo or brand name has no minimum contrast requirement.', 'No'),
('10.2.13', 'Resize text', 'Where ICT is a non-web document, it shall satisfy the success criterion in Table 10.13.\r\nTable 10.13: Document success criterion: Resize text\r\nExcept for captions and images of text, text can be resized without assistive technology up to 200 percent without loss of content or functionality.', 'No'),
('10.2.14', 'Images of text', 'Where ICT is a non-web document, it shall satisfy the success criterion in Table 10.14.\r\nTable 10.14: Document success criterion: Images of text\r\nIf the technologies being used can achieve the visual presentation, text is used to convey information rather than images of text except for the following:\r\n-Customizable: The image of text can be visually customized to the user''s requirements.\r\n-Essential: A particular presentation of text is essential to the information being conveyed.', 'No'),
('10.2.15', 'Keyboard', 'Where ICT is a non-web document, it shall satisfy the success criterion in Table 10.15.\r\nTable 10.15: Document success criterion: Keyboard\r\nAll functionality of the content is operable through a keyboard interface without requiring specific timings for individual keystrokes, except where the underlying function requires input that depends on the path of the user''s movement and not just the endpoints.', 'No'),
('10.2.16', 'No keyboard trap', 'Where ICT is a non-web document, it shall satisfy the success criterion in Table 10.16.\r\nTable 10.16: Document success criterion: No keyboard trap\r\nIf keyboard focus can be moved to a component of the document using a keyboard interface, then focus can be moved away from that component using only a keyboard interface, and, if it requires more than unmodified arrow or tab keys or other standard exit methods, the user is advised of the method for moving focus away.', 'No'),
('10.2.17', 'Timing adjustable', 'Where ICT is a non-web document, it shall satisfy the success criterion in Table 10.17.\r\nTable 10.17: Document success criterion: Timing adjustable\r\nFor each time limit that is set by the document, at least one of the following is true:\r\n-Turn off: The user is allowed to turn off the time limit before encountering it; or\r\n-Adjust: The user is allowed to adjust the time limit before encountering it over a wide range that is at least ten times the length of the default setting; or\r\n-Extend: The user is warned before time expires and given at least 20 seconds to extend the time limit with a simple action (for example, "press the space bar"), and the user is allowed to extend the time limit at least ten times; or\r\n-Real-time Exception: The time limit is a required part of a real-time event (for example, an auction), and no alternative to the time limit is possible; or\r\n-Essential Exception: The time limit is essential and extending it would invalidate the activity; or\r\n-20 Hour Exception: The time limit is longer than 20 hours.', 'No'),
('10.2.18', 'Pause, stop, hide', 'Where ICT is a non-web document, it shall satisfy the success criterion in Table 10.18.\r\nTable 10.18: Document success criterion: Pause, stop, hide\r\nFor moving, blinking, scrolling, or auto-updating information, all of the following are true:\r\n-Moving, blinking, scrolling: For any moving, blinking or scrolling information that (1) starts automatically, (2) lasts more than five seconds, and (3) is presented in parallel with other content, there is a mechanism for the user to pause, stop, or hide it unless the movement, blinking, or scrolling is part of an activity where it is essential; and\r\n-Auto-updating: For any auto-updating information that (1) starts automatically and (2) is presented in parallel with other content, there is a mechanism for the user to pause, stop, or hide it or to control the frequency of the update unless the auto-updating is part of an activity where it is essential.', 'No'),
('10.2.19', 'Three flashes or below threshold', 'Where ICT is a non-web document, it shall satisfy the success criterion in Table 10.19.\r\nTable 10.19: Document success criterion: Three flashes or below threshold\r\nDocuments do not contain anything that flashes more than three times in any one second period, or the flash is below the general flash and red flash thresholds.', 'No'),
('10.2.21', 'Page titled', 'Where ICT is a non-web document, it shall satisfy the success criterion in Table 10.21.\r\nTable 10.21: Document success criterion: Document titled\r\nDocuments have titles that describe topic or purpose.', 'No'),
('10.2.22', 'Focus order', 'Where ICT is a non-web document, it shall satisfy the success criterion in Table 10.22.\r\nTable 10.22: Document success criterion: Focus order\r\nIf a document can be navigated sequentially and the navigation sequences affect meaning or operation, focusable components receive focus in an order that preserves meaning and operability.', 'No'),
('10.2.23', 'Link purpose (in context)', 'Where ICT is a non-web document, it shall satisfy the success criterion in Table 10.23.\r\nTable 10.23: Document success criterion: Link purpose (in context)\r\nThe purpose of each link can be determined from the link text alone or from the link text together with its programmatically determined link context, except where the purpose of the link would be ambiguous to users in general.', 'No'),
('10.2.25', 'Headings and labels', 'Where ICT is a non-web document, it shall satisfy the success criterion in Table 10.25.\r\nTable 10.25: Document success criterion: Headings and labels\r\nHeadings and labels describe topic or purpose.', 'No'),
('10.2.26', 'Focus visible', 'Where ICT is a non-web document, it shall satisfy the success criterion in Table 10.26.\r\nTable 10.26: Document success criterion: Focus visible\r\nAny keyboard operable user interface has a mode of operation where the keyboard focus indicator is visible.', 'No'),
('10.2.27', 'Language of page', 'Where ICT is a non-web document, it shall satisfy the success criterion in Table 10.27.\r\nTable 10.27: Document success criterion: Language of page\r\nThe default human language of each document can be programmatically determined.', 'No'),
('10.2.28', 'Language of parts', 'Where ICT is a non-web document, it shall satisfy the success criterion in Table 10.28.\r\nTable 10.28: Document success criterion: Language of parts\r\nThe human language of each passage or phrase in the document can be programmatically determined except for proper names, technical terms, words of indeterminate language, and words or phrases that have become part of the vernacular of the immediately surrounding text.', 'No'),
('10.2.29', 'On focus', 'Where ICT is a non-web document, it shall satisfy the success criterion in Table 10.29.\r\nTable 10.29: Document success criterion: On focus\r\nWhen any component receives focus, it does not initiate a change of context.', 'No'),
('10.2.30', 'On input', 'Where ICT is a non-web document, it shall satisfy the success criterion in Table 10.30.\r\nTable 10.30: Document success criterion: On input\r\nChanging the setting of any user interface component does not automatically cause a change of context unless the user has been advised of the behaviour before using the component.', 'No'),
('10.2.33', 'Error identification', 'Where ICT is a non-web document, it shall satisfy the success criterion in Table 10.33.\r\nTable 10.33: Document success criterion: Error identification\r\nIf an input error is automatically detected, the item that is in error is identified and the error is described to the user in text.', 'No'),
('10.2.34', 'Labels or instructions', 'Where ICT is a non-web document, it shall satisfy the success criterion in Table 10.34.\r\nTable 10.34: Document success criterion: Labels or instructions\r\nLabels or instructions are provided when content requires user input.', 'No'),
('10.2.35', 'Error suggestion', 'Where ICT is a non-web document, it shall satisfy the success criterion in Table 10.35.\r\nTable 10.35: Document success criterion: Error suggestion\r\nIf an input error is automatically detected and suggestions for correction are known, then the suggestions are provided to the user, unless it would jeopardize the security or purpose of the content.', 'No'),
('10.2.36', 'Error prevention (legal, financial, data)', 'Where ICT is a non-web document, it shall satisfy the success criterion in Table 10.36.\r\nTable 10.36: Document success criterion: Error prevention (legal, financial, data)\r\nFor documents that cause legal commitments or financial transactions for the user to occur, that modify or delete user-controllable data in data storage systems, or that submit user test responses, at least one of the following is true:\r\n1) Reversible: Submissions are reversible.\r\n2) Checked: Data entered by the user is checked for input errors and the user is provided an opportunity to correct them.\r\n3) Confirmed: A mechanism is available for reviewing, confirming, and correcting information before finalizing the submission.', 'No'),
('10.2.37', 'Parsing', 'For documents that use markup languages, in such a way that the markup is separately exposed and available to assistive technologies and accessibility features of software or to a user-selectable user agent, elements have complete start and end tags, elements are nested according to their specifications, elements do not contain duplicate attributes, and any IDs are unique, except where the specifications allow these features.', 'No'),
('10.2.38', 'Name, role, value', 'Where ICT is a non-web document, it shall satisfy the success criterion in Table 10.38.\r\nTable 10.38: Document success criterion: Name, role, value\r\nFor all user interface components (including but not limited to: form elements, links and components generated by scripts), the name and role can be programmatically determined; states, properties, and values that can be set by the user can be programmatically set; and notification of changes to these items is available to user agents, including assistive technologies.', 'No'),
('10.2.39', 'Caption positioning (recommendation)', 'Where ICT is a non-web document that contains synchronized media with captions, the captions should not obscure relevant information in the synchronized media.', 'Si'),
('10.2.40', 'Audio description timing (recommendation)', 'Where ICT is a non-web document that contains synchronized media with audio description, the audio description should not interfere with relevant audio information in the synchronized media.', 'Si');
INSERT INTO `clause` (`id`, `title`, `text`, `should`) VALUES
('11.2.1.01', 'Non-text content (screen reading supported)', 'Where ICT is non-web software that provides a user interface and that supports access to assistive technologies for screen reading, it shall satisfy the success criterion in Table 11.1.\r\nTable 11.1: Software success criterion: Non-text content\r\nAll non-text content that is presented to the user has a text alternative that serves the equivalent purpose, except for the situations listed below:\r\n-Controls, Input: If non-text content is a control or accepts user input, then it has a name that describes its purpose. (Refer to WCAG 2.0 Guideline 4.1 [4] for additional requirements for controls and content that accepts user input.)\r\n-Time-Based Media: If non-text content is time-based media, then text alternatives at least provide descriptive identification of the non-text content. (Refer to WCAG 2.0 Guideline 1.2 [4] for additional requirements for media.)\r\n-Test: If non-text content is a test or exercise that would be invalid if presented in text, then text alternatives at least provide descriptive identification of the non-text content.\r\n-Sensory: If non-text content is primarily intended to create a specific sensory experience, then text alternatives at least provide descriptive identification of the non-text content.\r\n-CAPTCHA: If the purpose of non-text content is to confirm that content is being accessed by a person rather than a computer, then text alternatives that identify and describe the purpose of the non-text content are provided, and alternative forms of CAPTCHA using output modes for different types of sensory perception are provided to accommodate different disabilities.\r\n-Decoration, Formatting, Invisible: If non-text content is pure decoration, is used only for visual formatting, or is not presented to users, then it is implemented in a way that it can be ignored by assistive technology.', 'No'),
('11.2.1.02', 'Audio-only and video-only (pre-recorded', 'Where ICT is non-web software that provides a user interface and that supports access to assistive technologies for screen reading and where pre-recorded auditory information is not needed to enable the use of closed functions of ICT, it shall satisfy the success criterion in Table 11.2.\r\nTable 11.2: Software success criterion: Audio-only and video-only (pre-recorded)\r\nFor pre-recorded audio-only and pre-recorded video-only media, the following are true, except when the audio or video is a media alternative for text and is clearly labelled as such:\r\n-Pre-recorded Audio-only: An alternative for time-based media is provided that presents equivalent information for pre-recorded audio-only content.\r\n-Pre-recorded Video-only: Either an alternative for time-based media or an audio track is provided that presents equivalent information for pre-recorded video-only content.', 'No'),
('11.2.1.03', 'Captions (pre-recorded)', 'Where ICT is non-web software that provides a user interface, it shall satisfy the success criterion in Table 11.3.\r\nTable 11.3: Software success criterion: Captions (pre-recorded)\r\nCaptions are provided for all pre-recorded audio content in synchronized media, except when the media is a media alternative for text and is clearly labeled as such.', 'No'),
('11.2.1.04', 'Audio description or media alternative (pre-recorded)', 'Where ICT is non-web software that provides a user interface and that supports access to assistive technologies for screen reading, it shall satisfy the success criterion in Table 11.4.\r\nTable 11.4: Software success criterion: Audio description or media alternative (pre-recorded)\r\nAn alternative for time-based media or audio description of the pre-recorded video content is provided for synchronized media, except when the media is a media alternative for text and is clearly labeled as such.', 'No'),
('11.2.1.05', 'Captions (live)', 'Where ICT is non-web software that provides a user interface, it shall satisfy the success criterion in Table 11.5.\r\nTable 11.5: Software success criterion: Captions (live)\r\nCaptions are provided for all live audio content in synchronized media.', 'No'),
('11.2.1.06', 'Audio description (pre-recorded)', 'Where ICT is non-web software that provides a user interface, it shall satisfy the success criterion in Table 11.6.\r\nTable 11.6: Software success criterion: Audio description (pre-recorded)\r\nAudio description is provided for all pre-recorded video content in synchronized media.', 'No'),
('11.2.1.07', 'Info and relationships', 'Where ICT is non-web software that provides a user interface and that supports access to assistive technologies for screen reading, it shall satisfy the success criterion in Table 11.7.\r\nTable 11.7: Software success criterion: Info and relationships\r\nInformation, structure, and relationships conveyed through presentation can be programmatically determined or are available in text.', 'No'),
('11.2.1.08', 'Meaningful sequence', 'Where ICT is non-web software that provides a user interface and that supports access to assistive technologies for screen reading, it shall satisfy the success criterion in Table 11.8.\r\nTable 11.8: Software success criterion: Meaningful sequence\r\nWhen the sequence in which content is presented affects its meaning, a correct reading sequence can be programmatically determined.', 'No'),
('11.2.1.09', 'Sensory characteristics', 'Where ICT is non-web software that provides a user interface, it shall satisfy the success criterion in Table 11.9.\r\nTable 11.9: Software success criterion: Sensory characteristics\r\nInstructions provided for understanding and operating content do not rely solely on sensory characteristics of components such as shape, size, visual location, orientation, or sound.', 'No'),
('11.2.1.10', 'Use of colour', 'Where ICT is non-web software that provides a user interface, it shall satisfy the success criterion in Table 11.10.\r\nTable 11.10: Software success criterion: Use of colour\r\nColour is not used as the only visual means of conveying information, indicating an action, prompting a response, or distinguishing a visual element.', 'No'),
('11.2.1.11', 'Audio control', 'Where ICT is non-web software that provides a user interface, it shall satisfy the success criterion in Table 11.11.\r\nTable 11.11: Software success criterion: Audio control\r\nIf any audio in a software plays automatically for more than 3 seconds, either a mechanism is available to pause or stop the audio, or a mechanism is available to control audio volume independently from the overall system volume level.', 'No'),
('11.2.1.12', 'Contrast (minimum)', 'Where ICT is non-web software that provides a user interface, it shall satisfy the success criterion in Table 11.12.\r\nTable 11.12: Software success criterion: Contrast (minimum)\r\nThe visual presentation of text and images of text has a contrast ratio of at least 4.5:1, except for the following:\r\n-Large Text: Large-scale text and images of large-scale text have a contrast ratio of at least 3:1.\r\n-Incidental: Text or images of text that are part of an inactive user interface component, that are pure decoration, that are not visible to anyone, or that are part of a picture that contains significant other visual content, have no contrast requirement.\r\n-Logotypes: Text that is part of a logo or brand name has no minimum contrast requirement.', 'No'),
('11.2.1.13', 'Resize text', 'Where ICT is non-web software that provides a user interface and that supports access to enlargement features of platform or assistive technology, it shall satisfy the success criterion in Table 11.13.\r\nTable 11.13: Software success criterion: Resize text\r\nExcept for captions and images of text, text can be resized without assistive technology up to 200 percent without loss of content or functionality.\r\n', 'No'),
('11.2.1.14', 'Images of text', 'Where ICT is non-web software that provides a user interface and that supports access to assistive technologies for screen reading, it shall satisfy the success criterion in Table 11.14.\r\nTable 11.14: Software success criterion: Images of text\r\nIf the technologies being used can achieve the visual presentation, text is used to convey information rather than images of text except for the following:\r\n-Customizable: The image of text can be visually customized to the user''s requirements.\r\n-Essential: A particular presentation of text is essential to the information being conveyed.', 'No'),
('11.2.1.15', 'Keyboard', 'Where ICT is non-web software that provides a user interface and that supports access to keyboards or a keyboard interface, it shall satisfy the success criterion in Table 11.15.\r\nTable 11.15: Software success criterion: Keyboard\r\nAll functionality of the content is operable through a keyboard interface without requiring specific timings for individual keystrokes, except where the underlying function requires input that depends on the path of the user''s movement and not just the endpoints.', 'No'),
('11.2.1.16', 'No keyboard trap', 'Where ICT is non-web software that provides a user interface, it shall satisfy the success criterion in Table 11.16.\r\nTable 11.16: Software success criterion: No keyboard trap\r\nIf keyboard focus can be moved to a component of the software using a keyboard interface, then focus can be moved away from that component using only a keyboard interface, and, if it requires more than unmodified arrow or tab keys or other standard exit methods, the user is advised of the method for moving focus away.', 'No'),
('11.2.1.17', 'Timing adjustable', 'Where ICT is non-web software that provides a user interface, it shall satisfy the success criterion in Table 11.17.\r\nTable 11.17: Software success criterion: Timing adjustable\r\nFor each time limit that is set by the software, at least one of the following is true:\r\n-Turn off: The user is allowed to turn off the time limit before encountering it; or\r\n-Adjust: The user is allowed to adjust the time limit before encountering it over a wide range that is at least ten times the length of the default setting; or\r\n-Extend: The user is warned before time expires and given at least 20 seconds to extend the time limit with a simple action (for example, "press the space bar"), and the user is allowed to extend the time limit at least ten times; or\r\n-Real-time Exception: The time limit is a required part of a real-time event (for example, an auction), and no alternative to the time limit is possible; or\r\n-Essential Exception: The time limit is essential and extending it would invalidate the activity; or\r\n-20 Hour Exception: The time limit is longer than 20 hours.', 'No'),
('11.2.1.18', 'Pause, stop, hide', 'Where ICT is non-web software that provides a user interface, it shall satisfy the success criterion in Table 11.18.\r\nTable 11.18: Software success criterion: Pause, stop, hide\r\nFor moving, blinking, scrolling, or auto-updating information, all of the following are true:\r\n-Moving, blinking, scrolling: For any moving, blinking or scrolling information that (1) starts automatically, (2) lasts more than five seconds, and (3) is presented in parallel with other content, there is a mechanism for the user to pause, stop, or hide it unless the movement, blinking, or scrolling is part of an activity where it is essential; and\r\n-Auto-updating: For any auto-updating information that (1) starts automatically and (2) is presented in parallel with other content, there is a mechanism for the user to pause, stop, or hide it or to control the frequency of the update unless the auto-updating is part of an activity where it is essential.', 'No'),
('11.2.1.19', 'Three flashes or below threshold', 'Where ICT is non-web software that provides a user interface, it shall satisfy the success criterion in Table 11.19.\r\nTable 11.19: Software success criterion: Three flashes or below threshold\r\nSoftware does not contain anything that flashes more than three times in any one second period, or the flash is below the general flash and red flash thresholds.', 'No'),
('11.2.1.22', 'Focus order', 'Where ICT is non-web software that provides a user interface, it shall satisfy the success criterion in Table 11.22.\r\nTable 11.22: Software success criterion: Focus order\r\nIf software can be navigated sequentially and the navigation sequences affect meaning or operation, focusable components receive focus in an order that preserves meaning and operability.', 'No'),
('11.2.1.23', 'Link purpose (in context)', 'Where ICT is non-web software that provides a user interface, it shall satisfy the success criterion in Table 11.23.\r\nTable 11.23: Software success criterion: Link purpose (in context)\r\nThe purpose of each link can be determined from the link text alone or from the link text together with its programmatically determined link context, except where the purpose of the link would be ambiguous to users in general.', 'No'),
('11.2.1.25', 'Headings and labels', 'Where ICT is non-web software that provides a user interface, it shall satisfy the success criterion in Table 11.25.\r\nTable 11.25: Software success criterion: Headings and labels\r\nHeadings and labels describe topic or purpose.', 'No'),
('11.2.1.26', 'Focus visible', 'Where ICT is non-web software that provides a user interface, it shall satisfy the success criterion in Table 11.26.\r\nTable 11.26: Software success criterion: Focus visible\r\nAny keyboard operable user interface has a mode of operation where the keyboard focus indicator is visible.', 'No'),
('11.2.1.27', 'Language of software', 'Where ICT is non-web software that provides a user interface and that supports access to assistive technologies for screen reading, it shall satisfy the success criterion in Table 11.27.\r\nTable 11.27: Software success criterion: Language of software\r\nThe default human language of software can be programmatically determined.', 'No'),
('11.2.1.29', 'On focus', 'Where ICT is non-web software that provides a user interface, it shall satisfy the success criterion in Table 11.29.\r\nTable 11.29: Software success criterion: On focus\r\nWhen any component receives focus, it does not initiate a change of context.', 'No'),
('11.2.1.30', 'On input', 'Where ICT is non-web software that provides a user interface, it shall satisfy the success criterion in Table 11.30.\r\nTable 11.30: Software success criterion: On input\r\nChanging the setting of any user interface component does not automatically cause a change of context unless the user has been advised of the behavior before using the component.', 'No'),
('11.2.1.33', 'Error identification', 'Where ICT is non-web software that provides a user interface and that supports access to assistive technologies for screen reading, it shall satisfy the success criterion in Table 11.33.\r\nTable 11.33: Software success criterion: Error identification\r\nIf an input error is automatically detected, the item that is in error is identified and the error is described to the user in text.', 'No'),
('11.2.1.34', 'Labels or instructions', 'Where ICT is non-web software that provides a user interface, it shall satisfy the success criterion in Table 11.34.\r\nTable 11.34: Software success criterion: Labels or instructions\r\nLabels or instructions are provided when content requires user input.', 'No'),
('11.2.1.35', 'Error suggestion', 'Where ICT is non-web software that provides a user interface, it shall satisfy the success criterion in Table 11.35.\r\nTable 11.35: Software success criterion: Error suggestion\r\nIf an input error is automatically detected and suggestions for correction are known, then the suggestions are provided to the user, unless it would jeopardize the security or purpose of the content.', 'No'),
('11.2.1.36', 'Error prevention (legal, financial, data)', 'Where ICT is non-web software that provides a user interface, it shall satisfy the success criterion in Table 11.36.\r\nTable 11.36: Software success criterion: Error prevention (legal, financial, data)\r\nFor software that cause legal commitments or financial transactions for the user to occur, that modify or delete user-controllable data in data storage systems, or that submit user test responses, at least one of the following is true:\r\n1) Reversible: Submissions are reversible.\r\n2) Checked: Data entered by the user is checked for input errors and the user is provided an opportunity to correct them.\r\n3) Confirmed: A mechanism is available for reviewing, confirming, and correcting information before finalizing the submission.', 'No'),
('11.2.1.37', 'Parsing', 'Where ICT is non-web software that provides a user interface and that supports access to any assistive technologies, it shall satisfy the success criterion in Table 11.37.\r\nTable 11.37: Software success criterion: Parsing\r\nFor software that uses markup languages, in such a way that the markup is separately exposed and available to assistive technologies and accessibility features of software or to a user-selectable user agent, elements have complete start and end tags, elements are nested according to their specifications, elements do not contain duplicate attributes, and any IDs are unique, except where the specifications allow these features.', 'No'),
('11.2.1.38', 'Name, role, value', 'Where ICT is non-web software that provides a user interface and that supports access to any assistive technologies, it shall satisfy the success criterion in Table 11.38.\r\nTable 11.38: Software success criterion: Name, role, value\r\nFor all user interface components (including but not limited to: form elements, links and components generated by scripts), the name and role can be programmatically determined; states, properties, and values that can be set by the user can be programmatically set; and notification of changes to these items is available to user agents, including assistive technologies.', 'No'),
('11.2.2.01', 'Non-text content', 'Where ICT is non-web software that provides a user interface which is closed to assistive technologies for screen reading, it shall meet requirement 5.1.3.6 (Speech output for non-text content).', 'No'),
('11.2.2.02.1', 'Pre-recorded audio-only', 'Where ICT is non-web software that provides a user interface which is closed to assistive technologies for screen reading and pre-recorded auditory information is needed to enable the use of closed functions of ICT, the functionality of software that provides a user interface shall meet requirement 5.1.5 (Visual output for auditory information).', 'No'),
('11.2.2.02.2', 'Pre-recorded video-only', 'Where ICT is non-web software that provides a user interface which is closed to assistive technologies for screen reading, it shall meet requirement 5.1.3.7 (Speech output for video information).', 'No'),
('11.2.2.04', 'Audio description or media alternative (pre-recorded)', 'Where ICT is non-web software that provides a user interface which is closed to assistive technologies for screen reading, it shall meet requirement 5.1.3.7 (Speech output for video information).', 'No'),
('11.2.2.07', 'Info and relationships (recommendation)', 'Where ICT is non-web software that provides a user interface which is closed to assistive technologies for screen reading and where information is displayed on the screen, the ICT should provide auditory information that allows the user to correlate the audio with the information displayed on the screen.', 'No'),
('11.2.2.08', 'Meaningful sequence (recommendation)', 'Where ICT is non-web software that provides a user interface which is closed to assistive technologies for screen reading and where information is displayed on the screen, the ICT should provide auditory information that allows the user to correlate the audio with the information displayed on the screen.', 'No'),
('11.2.2.13', 'Resize text', 'Where ICT is non-web software that provides a user interface which is not able to access to enlargement features of platform or assistive technology, it shall meet requirement 5.1.4 (Functionality closed to text enlargement).', 'No'),
('11.2.2.14', 'Images of text', 'Where ICT is non-web software that provides a user interface which is closed to assistive technologies for screen reading, it does not need to meet the "Images of text" success criterion in Table 11.14 because there is no need to impose a requirement on all closed functionality that text displayed on the screen actually be represented internally as text (as defined by WCAG 2.0), given that there is no interoperability with assistive technology.', 'No'),
('11.2.2.15', 'Keyboard', 'Where ICT is non-web software that provides a user interface which is closed to keyboards or keyboard interface, it shall meet requirement 5.1.6.1 (Operation without keyboard interface: Closed functionality).', 'No'),
('11.2.2.27', 'Language of software', 'Where ICT is non-web software that provides a user interface which is closed to assistive technologies for screen reading, it shall meet requirement 5.1.3.14 (Spoken languages).', 'No'),
('11.2.2.33', 'Error identification', 'Where ICT is non-web software that provides a user interface which is closed to assistive technologies for screen reading, it shall meet requirement 5.1.3.15 (Non-visual error identification).', 'No'),
('11.2.2.37', 'Parsing', 'Where ICT is non-web software that provides a user interface which is closed to all assistive technology it shall not have to meet the "Parsing" success criterion in Table 11.37 because the intent of this success criterion is to provide consistency so that different user agents or assistive technologies will yield the same result.', 'No'),
('11.2.2.38', 'Name, role, value', 'Where ICT is non-web software that provides a user interface which is closed to all assistive technology it shall not have to meet the "Name, role, value" success criterion in Table 11.38 because this success criterion requires information in a programmatically determinable form.', 'No'),
('11.3.1', 'Closed functionality', 'Where the closed functionality of software conforms to clause 5.1 (Closed functionality) it shall not be required to conform with clause 11.3.2 to clause 11.3.17.', 'No'),
('11.3.2.01', 'Platform accessibility service support for software that provides a user interface', 'Platform software shall provide a set of documented platform services that enable software that provides a user interface running on the platform software to interoperate with assistive technology.', 'No'),
('11.3.2.02', 'Platform accessibility service support for assistive technologies', 'Platform software shall provide a set of documented platform accessibility services that enable assistive technology to interoperate with software that provides a user interface running on the platform software.', 'No'),
('11.3.2.03', 'Use of accessibility services', 'Where the software provides a user interface it shall use the applicable documented platform accessibility services. If the documented platform accessibility services do not allow the software to meet the applicable requirements of clauses 11.3.2.5 to 11.3.2.17, then software that provides a user interface shall use other documented services to interoperate with assistive technology.', 'No'),
('11.3.2.04', 'Assistive technology', 'Where the ICT is assistive technology it shall use the documented platform accessibility services.', 'No'),
('11.3.2.05', 'Object information', 'Where the software provides a user interface it shall, by using the services as described in clause 11.3.2.3, make the user interface elements'' role, state(s), boundary, name, and description programmatically determinable by assistive technologies.', 'No'),
('11.3.2.06', 'Row, column, and headers', 'Where the software provides a user interface it shall, by using the services as described in clause 11.3.2.3, make the row and column of each cell in a data table, including headers of the row and column if present, programmatically determinable by assistive technologies.', 'No'),
('11.3.2.07', 'Values', 'Where the software provides a user interface, it shall, by using the services as described in clause 11.3.2.3, make the current value of a user interface element and any minimum or maximum values of the range, if the user interface element conveys information about a range of values, programmatically determinable by assistive technologies.', 'No'),
('11.3.2.08', 'Label relationships', 'Where the software provides a user interface it shall expose the relationship that a user interface element has as a label for another element, or of being labelled by another element, using the services as described in clause 11.3.2.3, so that this information is programmatically determinable by assistive technologies.', 'No'),
('11.3.2.09', 'Parent-child relationships', 'Where the software provides a user interface it shall, by using the services as described in clause 11.3.2.3, make the relationship between a user interface element and any parent or children elements programmatically determinable by assistive technologies.', 'No'),
('11.3.2.10', 'Text', 'Where the software provides a user interface it shall, by using the services as described in clause 11.3.2.3, make the text contents, text attributes, and the boundary of text rendered to the screen programmatically determinable by assistive technologies.', 'No'),
('11.3.2.11', 'List of available actions', 'Where the software provides a user interface it shall, by using the services as described in clause 11.3.2.3, make a list of available actions that can be executed on a user interface element, programmatically determinable by assistive technologies.', 'No'),
('11.3.2.12', 'Execution of available actions', 'Where permitted by security requirements, software that provides a user interface shall, by using the services as described in clause 11.3.2.3, allow the programmatic execution of the actions exposed according to clause 11.3.2.11 by assistive technologies.', 'No'),
('11.3.2.13', 'Tracking of focus and selection attributes', 'Where software provides a user interface it shall, by using the services as described in clause 11.3.2.3, make information and mechanisms necessary to track focus, text insertion point, and selection attributes of user interface elements programmatically determinable by assistive technologies.', 'No'),
('11.3.2.14', 'Modification of focus and selection attributes', 'Where permitted by security requirements, software that provides a user interface shall, by using the services as described in clause 11.3.2.3, allow assistive technologies to programmatically modify focus, text insertion point, and selection attributes of user interface elements where the user can modify these items.', 'No'),
('11.3.2.15', 'Change notification', 'Where software provides a user interface it shall, by using the services as described in 11.3.2.3, notify assistive technologies about changes in those programmatically determinable attributes of user interface elements that are referenced in requirements 11.3.2.5 to 11.3.2.11 and 11.3.2.13.', 'No'),
('11.3.2.16', 'Modifications of states and properties', 'Where permitted by security requirements, software that provides a user interface shall, by using the services as described in clause 11.3.2.3, allow assistive technologies to programmatically modify states and properties of user interface elements, where the user can modify these items.', 'No'),
('11.3.2.17', 'Modifications of values and text', 'Where permitted by security requirements, software that provides a user interface shall, by using the services as described in 11.3.2.3, allow assistive technologies to modify values and text of user interface elements using the input methods of the platform, where a user can modify these items without the use of assistive technology.', 'No'),
('11.4.1', 'User control of accessibility features', 'Where software is a platform it shall provide sufficient modes of operation for user control over those platform accessibility features documented as intended for users.', 'No'),
('11.4.2', 'No disruption of accessibility features', 'Where software provides a user interface it shall not disrupt those documented accessibility features that are defined in platform documentation except when requested to do so by the user during the operation of the software.', 'No'),
('11.5', 'User preferences', 'Where software provides a user interface it shall provide sufficient modes of operation that use user preferences for platform settings for colour, contrast, font type, font size, and focus cursor except for software that is designed to be isolated from its underlying platforms.', 'No'),
('11.6.1', 'Content technology', 'Authoring tools shall conform to clauses 11.6.2 to 11.6.5 to the extent that information required for accessibility is supported by the format used for the output of the authoring tool.', 'No'),
('11.6.2', 'Accessible content creation', 'Authoring tools shall enable and guide the production of content that conforms to clauses 9 (Web content) or 10 (Non-Web content) as applicable.', 'No'),
('11.6.3', 'Preservation of accessibility information in transformations', 'If the authoring tool provides restructuring transformations or re-coding transformations, then accessibility information shall be preserved in the output if equivalent mechanisms exist in the content technology of the output.', 'No'),
('11.6.4', 'Repair assistance', 'If the accessibility checking functionality of an authoring tool can detect that content does not meet a requirement of clauses 9 (Web content) or 10 (Documents) as applicable, then the authoring tool shall provide repair suggestion(s).', 'No'),
('11.6.5', 'Templates', 'When an authoring tool provides templates, at least one template that supports the creation of content that conforms to the requirements of clauses 9 (Web content) or 10 (Documents) as applicable shall be available and identified as such.', 'No'),
('12.1.1', 'Accessibility and compatibility features', 'Product documentation provided with the ICT whether provided separately or integrated within the ICT shall list and explain how to use the accessibility and compatibility features of the ICT.', 'No'),
('12.1.2', 'Accessible documentation', 'Product documentation provided with the ICT shall be made available in at least one of the following electronic formats:\r\na) a Web format that conforms to the requirements of clause 9, or\r\nb) a non-web format that conforms to the requirements of clause 10.', 'No'),
('12.2.2', 'Information on accessibility and compatibility features', 'ICT support services shall provide information on the accessibility and compatibility features that are included in the product documentation.', 'No'),
('12.2.3', 'Effective communication', 'ICT support services shall accommodate the communication needs of individuals with disabilities either directly or through a referral point.', 'No'),
('12.2.4', 'Accessible documentation', 'Documentation provided by support services shall be made available in at least one of the following electronic formats:\r\na) a Web format that conforms to clause 9, or\r\nb) a non-web format that conforms to clause 10.', 'No'),
('13.1.2', 'Text relay services', 'Where ICT is intended to provide a text relay service, the text relay service shall enable text users and speech users to interact by providing conversion between the two modes of communication.', 'No'),
('13.1.3', 'Sign relay services', 'Where ICT is intended to provide a sign relay service, the sign relay service shall enable sign language users and speech users to interact by providing conversion between the two modes of communication.', 'No'),
('13.1.4', 'Lip-reading relay services', 'Where ICT is intended to provide a lip-reading relay service, the lip-reading service shall enable lip-readers and voice telephone users to interact by providing conversion between the two modes of communication.', 'No'),
('13.1.5', 'Captioned telephony services', 'Where ICT is intended to provide a captioned telephony service, the captioned telephony service shall assist a deaf or hard of hearing user in a spoken dialogue by providing text captions translating the incoming part of the conversation.', 'No'),
('13.1.6', 'Speech to speech relay services', 'Where ICT is intended to provide a speech to speech relay service, the speech to speech relay service shall enable speech or cognitively impaired telephone users and any other user to communicate by providing assistance between them.', 'No'),
('13.2', 'Access to relay services', 'Where ICT systems support two-way communication and a set of relay services for such communication is specified, access to those relay services shall not be prevented for outgoing and incoming calls.', 'No'),
('13.3', 'Access to emergency services', 'Where ICT systems support two-way communication and a set of emergency services for such communication is specified, access to those emergency services shall not be prevented for outgoing and incoming calls.', 'No');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clausesofproject`
--

CREATE TABLE IF NOT EXISTS `clausesofproject` (
  `id` int(11) NOT NULL,
  `idClause` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `idProj` int(11) NOT NULL,
  `idAnswer` int(11) NOT NULL,
  `answergiven` enum('No','Yes') COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clausesofproject`
--

INSERT INTO `clausesofproject` (`id`, `idClause`, `idProj`, `idAnswer`, `answergiven`) VALUES
(1, '05.2', 60, 1, 'No'),
(2, '05.3', 60, 1, 'No'),
(3, '05.4', 60, 1, 'No'),
(4, '05.7', 60, 1, 'No'),
(5, '05.8', 60, 1, 'No'),
(6, '05.9', 60, 1, 'No'),
(7, '05.2', 61, 1, 'No'),
(8, '05.3', 61, 1, 'No'),
(9, '05.4', 61, 1, 'No'),
(10, '05.7', 61, 1, 'No'),
(11, '05.8', 61, 1, 'No'),
(12, '05.9', 61, 1, 'No');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clausesofquestion`
--

CREATE TABLE IF NOT EXISTS `clausesofquestion` (
  `idQuest` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `idClause` varchar(15) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clausesofquestion`
--

INSERT INTO `clausesofquestion` (`idQuest`, `idClause`) VALUES
('Q01', '05.1.2.1'),
('Q01', '05.1.2.2'),
('Q01', '05.1.4'),
('Q01', '05.1.5'),
('Q01.1', '05.1.3.01'),
('Q01.1', '05.1.3.16'),
('Q01.1.1', '05.1.3.02'),
('Q01.1.1', '05.1.3.03'),
('Q01.1.1', '05.1.3.08'),
('Q01.1.1', '05.1.3.09'),
('Q01.1.1', '05.1.3.10'),
('Q01.1.1', '05.1.3.11'),
('Q01.1.1', '05.1.3.12'),
('Q01.1.1', '05.1.3.13'),
('Q01.1.1.1', '05.1.3.04'),
('Q01.1.1.1', '05.1.3.05'),
('Q01.1.1.1', '05.1.3.06'),
('Q01.1.1.1', '05.1.3.07'),
('Q01.1.1.1', '05.1.3.14'),
('Q01.1.1.1', '05.1.3.15'),
('Q01.2', '05.1.6.1'),
('Q01.2', '05.1.6.2'),
('Q02', '05.5.1'),
('Q02', '05.5.2'),
('Q02.1', '05.6.1'),
('Q02.1', '05.6.2'),
('Q03', '06.1'),
('Q03', '06.2.1.1'),
('Q03', '06.2.1.2'),
('Q03', '06.3'),
('Q03', '06.4'),
('Q03', '13.2'),
('Q03', '13.3'),
('Q03.1', '06.2.2.1'),
('Q03.1', '06.2.3'),
('Q03.1', '06.2.4'),
('Q03.1.1', '06.2.2.2'),
('Q03.2', '06.5.2'),
('Q03.2', '06.5.3'),
('Q03.2', '06.5.4'),
('Q03.2', '06.6'),
('Q04', '07.1.1'),
('Q04', '07.1.2'),
('Q04', '07.1.3'),
('Q04', '07.2.1'),
('Q04', '07.2.2'),
('Q04', '07.2.3'),
('Q04', '07.3'),
('Q05', '08.1.2'),
('Q05', '08.1.3'),
('Q05', '08.3.5'),
('Q05', '08.4.3'),
('Q05', '08.5'),
('Q05.1', '08.2.1.1'),
('Q05.1', '08.2.1.2'),
('Q05.1', '08.2.2.1'),
('Q05.1', '08.2.2.2'),
('Q05.2', '08.3.2.1'),
('Q05.2', '08.3.2.2'),
('Q05.2', '08.3.2.3.1'),
('Q05.2', '08.3.2.3.3'),
('Q05.2', '08.3.2.4'),
('Q05.2', '08.3.2.5'),
('Q05.2', '08.3.2.6'),
('Q05.2', '08.3.3.1.1'),
('Q05.2', '08.3.3.1.2'),
('Q05.2', '08.3.3.1.3.1'),
('Q05.2', '08.3.3.1.3.3'),
('Q05.2', '08.3.3.2.1'),
('Q05.2', '08.3.3.2.2'),
('Q05.2', '08.3.3.2.3.1'),
('Q05.2', '08.3.3.2.3.2'),
('Q05.2', '08.3.4'),
('Q05.3', '08.4.1'),
('Q05.3', '08.4.2.1'),
('Q05.3', '08.4.2.2'),
('Q06', '09.2.01'),
('Q06', '09.2.02'),
('Q06', '09.2.03'),
('Q06', '09.2.04'),
('Q06', '09.2.05'),
('Q06', '09.2.06'),
('Q06', '09.2.07'),
('Q06', '09.2.08'),
('Q06', '09.2.09'),
('Q06', '09.2.10'),
('Q06', '09.2.11'),
('Q06', '09.2.12'),
('Q06', '09.2.13'),
('Q06', '09.2.14'),
('Q06', '09.2.15'),
('Q06', '09.2.16'),
('Q06', '09.2.17'),
('Q06', '09.2.18'),
('Q06', '09.2.19'),
('Q06', '09.2.20'),
('Q06', '09.2.21'),
('Q06', '09.2.22'),
('Q06', '09.2.23'),
('Q06', '09.2.24'),
('Q06', '09.2.25'),
('Q06', '09.2.26'),
('Q06', '09.2.27'),
('Q06', '09.2.28'),
('Q06', '09.2.29'),
('Q06', '09.2.30'),
('Q06', '09.2.31'),
('Q06', '09.2.32'),
('Q06', '09.2.33'),
('Q06', '09.2.34'),
('Q06', '09.2.35'),
('Q06', '09.2.36'),
('Q06', '09.2.37'),
('Q06', '09.2.38'),
('Q06', '09.3'),
('Q07', '10.2.01'),
('Q07', '10.2.02'),
('Q07', '10.2.03'),
('Q07', '10.2.04'),
('Q07', '10.2.05'),
('Q07', '10.2.06'),
('Q07', '10.2.07'),
('Q07', '10.2.08'),
('Q07', '10.2.09'),
('Q07', '10.2.10'),
('Q07', '10.2.11'),
('Q07', '10.2.12'),
('Q07', '10.2.13'),
('Q07', '10.2.14'),
('Q07', '10.2.15'),
('Q07', '10.2.16'),
('Q07', '10.2.17'),
('Q07', '10.2.18'),
('Q07', '10.2.19'),
('Q07', '10.2.21'),
('Q07', '10.2.22'),
('Q07', '10.2.23'),
('Q07', '10.2.25'),
('Q07', '10.2.26'),
('Q07', '10.2.27'),
('Q07', '10.2.28'),
('Q07', '10.2.29'),
('Q07', '10.2.30'),
('Q07', '10.2.33'),
('Q07', '10.2.34'),
('Q07', '10.2.35'),
('Q07', '10.2.36'),
('Q07', '10.2.37'),
('Q07', '10.2.38'),
('Q07', '10.2.39'),
('Q07', '10.2.40'),
('Q08', '11.3.2.04'),
('Q08', '11.4.2'),
('Q08', '11.5'),
('Q08.1', '11.2.1.03'),
('Q08.1', '11.2.1.05'),
('Q08.1', '11.2.1.06'),
('Q08.1', '11.2.1.09'),
('Q08.1', '11.2.1.10'),
('Q08.1', '11.2.1.11'),
('Q08.1', '11.2.1.12'),
('Q08.1', '11.2.1.17'),
('Q08.1', '11.2.1.18'),
('Q08.1', '11.2.1.19'),
('Q08.1', '11.2.1.22'),
('Q08.1', '11.2.1.23'),
('Q08.1', '11.2.1.26'),
('Q08.1', '11.2.1.29'),
('Q08.1', '11.2.1.30'),
('Q08.1', '11.2.1.34'),
('Q08.1', '11.2.1.35'),
('Q08.1', '11.2.1.36'),
('Q08.1', '11.2.1.25'),
('Q08.1.1', '11.2.1.01'),
('Q08.1.1', '11.2.1.02'),
('Q08.1.1', '11.2.1.04'),
('Q08.1.1', '11.2.1.07'),
('Q08.1.1', '11.2.1.08'),
('Q08.1.1', '11.2.1.13'),
('Q08.1.1', '11.2.1.14'),
('Q08.1.1', '11.2.1.15'),
('Q08.1.1', '11.2.1.16'),
('Q08.1.1', '11.2.1.27'),
('Q08.1.1', '11.2.1.33'),
('Q08.1.1', '11.2.1.37'),
('Q08.1.1', '11.2.1.38'),
('Q08.1.2', '11.2.2.01'),
('Q08.1.2', '11.2.2.02.1'),
('Q08.1.2', '11.2.2.02.2'),
('Q08.1.2', '11.2.2.04'),
('Q08.1.2', '11.2.2.07'),
('Q08.1.2', '11.2.2.08'),
('Q08.1.2', '11.2.2.13'),
('Q08.1.2', '11.2.2.14'),
('Q08.1.2', '11.2.2.15'),
('Q08.1.2', '11.2.2.27'),
('Q08.1.2', '11.2.2.33'),
('Q08.1.2', '11.2.2.37'),
('Q08.1.2', '11.2.2.38'),
('Q08.2', '11.3.2.01'),
('Q08.2', '11.3.2.02'),
('Q08.2', '11.4.1'),
('Q08.3', '11.3.2.03'),
('Q08.3', '11.3.2.05'),
('Q08.3', '11.3.2.06'),
('Q08.3', '11.3.2.07'),
('Q08.3', '11.3.2.08'),
('Q08.3', '11.3.2.09'),
('Q08.3', '11.3.2.10'),
('Q08.3', '11.3.2.11'),
('Q08.3', '11.3.2.12'),
('Q08.3', '11.3.2.13'),
('Q08.3', '11.3.2.14'),
('Q08.3', '11.3.2.15'),
('Q08.3', '11.3.2.16'),
('Q08.3', '11.3.2.17'),
('Q08.4', '11.3.1'),
('Q08.5', '11.6.1'),
('Q08.5', '11.6.2'),
('Q08.5', '11.6.3'),
('Q08.5', '11.6.4'),
('Q08.5', '11.6.5'),
('Q09', '12.1.1'),
('Q09', '12.1.2'),
('Q10', '12.2.2'),
('Q10', '12.2.3'),
('Q10', '12.2.4'),
('Q11', '13.1.2'),
('Q11', '13.1.3'),
('Q11', '13.1.4'),
('Q11', '13.1.5'),
('Q11', '13.1.6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compliance`
--

CREATE TABLE IF NOT EXISTS `compliance` (
  `idCompliance` int(11) NOT NULL,
  `idClause` varchar(15) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `typeOfAssessment` enum('Testing','Inspection','Inspection and measurement','Test 1','Test 2','Measurement','Inspection of Measurement data or Test','Inspection based on measurement data','Inspection and Testing','Test') CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `preconditions` varchar(800) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `procedure` varchar(1500) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `result` varchar(500) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `compliance`
--

INSERT INTO `compliance` (`idCompliance`, `idClause`, `typeOfAssessment`, `preconditions`, `procedure`, `result`) VALUES
(1, '05.1.2.2', 'Testing', '1. The ICT has closed functionality.', '1. Determine the closed functions of the ICT.\r\n2. Check that the tests C.5.1.3 to C.5.1.6 can be carried out without the attachment or installation of any assistive technology except personal headsets or inductive loops.', 'Pass: Check 2 is true\r\nFail: Check 2 is false'),
(2, '05.1.3.01', 'Testing', '1. Visual information is needed to enable the use of those functions of the ICT that are closed to assistive technology for screen reading.', '1. Determine the functions of the ICT closed to screen reading.\r\n2. Check that they are all operable using non-visual access.', 'Pass: Check 2 is true\r\nFail: Check 2 is false'),
(3, '05.1.3.02', 'Inspection', '1. Auditory output is provided as non-visual access to closed functionality.', '1. Check that the auditory output is delivered by a mechanism included in or provided with the ICT.\r\n2. Check that the auditory output is delivered by a personal headset that can be connected through a 3,5 mm audio jack or an industry standard connection without requiring the use of vision.', 'Pass: Check 1 or 2 is true\r\nFail: Checks 1 and 2 are false'),
(4, '05.1.3.04', 'Inspection', '1. Speech output is provided as non-visual access to closed functionality.', '1. Check that the speech output is capable of being interrupted when requested by the user.\r\n2. Check that the speech output is capable of being repeated when requested by the user.', 'Pass: All checks are true\r\nFail: Any check is false'),
(5, '05.1.3.05', 'Inspection', '1. Speech output is provided as non-visual access to closed functionality.', '1. Determine the closed functions of the ICT.\r\n2. Check that the speech output for each single function is interrupted on a user action.\r\n3. Check that the speech output for each single function is interrupted when new speech output begins.', 'Pass: Check 2 and 3 are true\r\nFail: Check 2 or 3 are false'),
(6, '05.1.3.06', 'Testing', '1. Non-text content is presented to users via speech output.', '1. Check that speech output is provided as an alternative for non-text content.\r\n2. Check that the non-text content is not pure decoration.\r\n3. Check that the non-text content is not used only for visual formatting.\r\n4. Check that the speech output follows the guidance for "text alternative" described in WCAG 2.0 Success Criterion 1.1.1.', 'Pass: Checks 1 and 2 and 3 and 4 are true; or 1 and 2 are false; or 1 and 3 are false\r\nFail: Checks 1 is true and 2 false; or 1 is true and 3 false; or 1 and 2 and 3 are true and 4 is false'),
(7, '05.1.3.07', 'Testing', '1. Pre-recorded video content is needed to enable the use of closed functions of ICT\r\n2. Speech output is provided as non-visual access to non-text content displayed on closed functionality.', '1. Check that the speech output presents equivalent information for the pre-recorded video content.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(8, '05.1.3.08', 'Testing', '1. Auditory output is provided as non-visual access to closed functionality.\r\n2. The characters displayed are masking characters.\r\n3. The user does not explicitly choose to allow non-private auditory output.', '1. Check that the auditory output is not a spoken version of the characters entered.\r\n2. Check that the auditory output is known to be delivered only to a mechanism for private listening.\r\n3. If 1 and 2 are false, check that the user has explicitly chosen to allow non-private auditory output.', 'Pass: Any check is true\r\nFail: All checks are false'),
(9, '05.1.3.09', 'Testing', '1. Auditory output is provided as non-visual access to closed functionality.\r\n2. The output contains data.\r\n3. There is an applicable privacy policy which considers that data to be private.', '1. Check that the auditory output is only delivered through a mechanism for private listening.\r\n2. Check that the mechanism for private listening can be connected without requiring the use of vision.\r\n3. Check that the auditory output is delivered through any other mechanism that can be chosen by the user.', 'Pass: Checks 1 and 2 or 3 are true\r\nFail: Checks 1 or 2 and 3 are false'),
(10, '05.1.3.10', 'Testing', '1. Auditory output is provided as non-visual access to closed functionality.\r\n2. The ICT automatically plays interfering audible output.', '1. Check that the interfering audible output lasts no longer than three seconds.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(11, '05.1.3.11', 'Inspection', '1. The auditory output is provided as non-visual access to closed functionality.\r\n2. The auditory output is delivered through a mechanism for private listening.', '1. Check that there is at least one non-visual mode of operation for controlling the volume.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(12, '05.1.3.12', 'Inspection and measurement', '1. The auditory output is provided as non-visual access to closed functionality.\r\n2. The auditory output is delivered through speakers.', '1. Check that a non-visual incremental volume control is provided.\r\n2. Check that output amplification up to a level of at least 65 dBA (-29 dBPaA) is available.', 'Pass: Checks 1 and 2 are true\r\nFail: Check 1 or 2 is false'),
(13, '05.1.3.13', 'Inspection and measurement', '1. The auditory output is provided as non-visual access to closed functionality.\r\n2. The ICT is not dedicated to a single user.', '1. Check that a function that automatically resets the volume to be at a level of 65 dBA or less after every use is provided.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(14, '05.1.3.14', 'Testing', '1. The speech output is provided as non-visual access to closed functionality.\r\n2. The speech output is not proper names, technical terms, words of indeterminate language, and words or phrases that have become part of the vernacular of the immediately surrounding text.\r\n3. The content is not generated externally and is under the control of the ICT vendor.\r\n4. The displayed languages can be selected using non-visual access.\r\n5. The user has not selected a speech language that is different from the language of the displayed content.', '1. Check that the speech output is in the same human language of the displayed content provided.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(15, '05.1.3.15', 'Testing', '1. Speech output is provided as non-visual access to closed functionality.\r\n2. An input error is automatically detected.', '1. Check that speech output identifies the item that is in error.\r\n2. Check that the speech output describes the item that is in error.', 'Pass: Checks 1 and 2 are true\r\nFail: Check 1 or check 2 false'),
(16, '05.1.3.16', 'Testing', '1. The ICT is closed to visual access.\r\n2. The ICT provides receipts, tickets, or other outputs as a result of a self-service transaction.\r\n3. The information being checked is not printed copies of itineraries and maps.', '1. Check that speech output is provided which includes all information necessary to complete or verify the transaction.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(17, '05.1.4', 'Inspection and measurement', '1. A functionality of the ICT is closed to enlargement features of platform or assistive technology.\r\n2. A viewing distance is specified by the supplier.', '1. Measure the height of a capital letter H.\r\n2. Check that it subtends an angle of at least 0,7 degrees at the specified viewing distance.', 'Pass: Check 2 is true\r\nFail: Check 2 is false'),
(18, '05.1.5', 'Inspection', '1. Pre-recorded auditory information is needed to enable the use of closed functions of ICT.', '1. Check that the visual information is equivalent to the pre-recorded auditory output.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(19, '05.1.6.1', 'Inspection', '1. ICT functionality is closed to keyboards or keyboard interfaces.', '1. Check that all functionality is operable without vision.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(20, '05.1.6.2', 'Inspection', '1. ICT functionality is closed to keyboards or keyboard interfaces.\r\n2. Input focus can be moved to a user interface element.', '1. Check that it is possible to move the input focus away from that element using the same mechanism.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(21, '05.2', 'Inspection', '1. The ICT has documented accessibility features to meet a specific need.', '1. Check that it is possible to activate those accessibility features without relying on a method that does not support that need.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(22, '05.3', 'Test 1', '1. The ICT uses biological characteristic for user identification.', '1. Check that more than one means can be used for user identification.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(23, '05.3', 'Test 2', '1. The ICT uses biological characteristic for control of ICT.', '1. Check that more than one means can be used for control of ICT.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(24, '05.4', 'Inspection', '1. The non-proprietary information provided for accessibility is documented.\r\n2. The ICT converts information or communication.\r\n3. The non-proprietary information provided for accessibility can be contained in the destination format.\r\n4. The non-proprietary information provided for accessibility can be supported by the destination format.', '1. Check that the non-proprietary information provided for accessibility is preserved when the ICT converts information or communication.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(25, '05.5.1', 'Testing', 'The ICT has operable parts that require grasping, pinching, or twisting of the wrist to operate.', '1. Check that there is an accessible alternative means of operation that does not require these actions.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(26, '05.5.2', 'Testing', 'The ICT has operable parts.', '1. Identify that there is a means to discern each operable part without vision.\r\n2. Check that the action associated with the operable part has not been performed when using the means to discern each operable part of step 1.', 'Pass: Checks 1 and 2 are true\r\nFail: Checks 1 or 2 are false'),
(27, '05.6.1', 'Inspection', '1. The ICT has a locking or toggle control.\r\n2. The locking or toggle control is visually presented to the user.', '1. Check that there is at least one mode of operation where the status of all locking or toggle controls can be determined through touch without operating the control. 2. Check that there is at least one mode of operation where the status of all locking or toggle controls can be determined through sound without operating the control.', 'Pass: Check 1 or 2 is true\r\nFail: Checks 1 and 2 are false'),
(28, '05.6.2', 'Inspection', '1. The ICT has a locking or toggle control.\r\n2. The locking or toggle control is presented to the user.', '1. Check that there is at least one mode of operation where the status of all locking or toggle controls can be visually determined when the control is presented.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(29, '05.7', 'Testing', '1. A keyboard or keypad with key repeat is provided.\r\n2. The key repeat cannot be turned off.', '1. Check that the delay before key repeat can be adjusted to at least 2 seconds.\r\n2. Check that the key repeat rate can be adjusted to 2 seconds per character.', 'Pass: Checks 1 and 2 are true\r\nFail: Check 1 or 2 is false'),
(30, '05.8', 'Testing', '1. A keyboard or keypad is provided.', '1. Check that there is a mechanism that allows adjustment of the delay after any keystroke, during which an additional key-press will not be accepted if it is identical to the previous keystroke.\r\n2. Adjust that mechanism to its maximum setting.\r\n3. Press any key.\r\n4. After a delay of 0,5 seconds press the same key as that pressed in step 3.\r\n5. Check whether the keystroke of step 4 has been accepted.', 'Pass: Check 1 is true and check 5 is false\r\nFail: Check 1 is false or check 5 is true'),
(31, '05.9', 'Inspection', 'None.', '1. If there are multiple modes of operation, select one mode of operation (see notes 1 and 2 of this table for guidance on the selection).\r\n2. Determine all the user controllable functions of the ICT.\r\n3. Check that each user controllable function can be operated with a single point of contact.\r\n4. If there are multiple modes of operation and the test is not passed, repeat the procedure until all modes of operation have been tested.', 'Pass: Check 3 is true\r\nFail: Check 3 is false for all modes of operation'),
(32, '06.1', 'Measurement', '1. The ICT under test provides two-way voice communication.', '1. Check that the ICT can encode and decode audio with a frequency range with an upper limit of at least 7 000 Hz.', 'If check 1 is true then this recommendation is followed. This is not a requirement for conformance to the present document.'),
(33, '06.2.1.1', 'Inspection', '1. The ICT system under test allows two-way voice communication.\r\n2. A "reference" RTT-capable device compatible with the system is connected at the other end of the system.', '1. Check that the ICT allows a user to communicate with the "reference" ICT by RTT.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(34, '06.2.1.2', 'Inspection', '1. The ICT supports two-way voice communication.\r\n2. The ICT enables a user to communicate with another user by RTT.', '1. Check that the ICT provides a mechanism to select a mode of operation which allows concurrent voice and text.\r\n2. Check that ICT allows the concurrent use of voice and text when in the mode of operation identified in step 1.', 'Pass: Checks 1 and 2 are true\r\nFail: Check 1 or 2 is false'),
(35, '06.2.2.1', 'Inspection', '1. The ICT under test has RTT send and receive capabilities.\r\n2. The ICT supports RTT mechanism(s).\r\n3. A "reference" RTT-capable terminal using mechanisms supported by the ICT system is connected at the other end of the system to the ICT under test.', '1. The ICT under test is connected to the ICT system terminated by the "reference" terminal.\r\n2. The different elements of the ICT are in an operational status (the connection is active and the terminals are in the relevant RTT mode) and the two terminals are communicating to each other.\r\n3. A Short text sequence is sent by the ICT under test.\r\n4. A Short text sequence is sent by the "reference" terminal.\r\n5. Check, on the ICT under test, that displayed sent text is visually differentiated from and separated from received text.', 'Pass: Check 5 is true\r\nFail: Check 5 is false'),
(36, '06.2.2.2', 'Inspection', '1. The ICT under test has RTT send and receive capabilities.\r\n2. The RTT is not a closed functionality.\r\n3. A "reference" RTT-capable terminal using mechanisms supported by the ICT network is connected at the other end of an ICT system to the ICT under test.', '1. The ICT under test is connected to the ICT system terminated by the "reference" terminal.\r\n2. The different elements of the ICT are in an operational status (the connection is active and the terminals are in the relevant RTT mode) and the two terminals are communicating to each other.\r\n3. A Short text sequence is sent by the ICT under test.\r\n4. A Short text sequence is sent by the "reference" terminal.\r\n5. Check that the send/receive direction of transmitted text is programmatically determinable.', 'Pass: Check 5 is true\r\nFail: Check 5 is false'),
(37, '06.2.3', 'Test', '1. The ICT under test supports two-way voice communication.\r\n2. The ICT under test has RTT functionality.', '1. Check that the ICT interoperates over the Public Switched Telephone Network (PSTN), with other ICT that directly connects to the PSTN as described in Recommendation ITU-T V.18 [i.23] or any of its annexes for text telephony signals at the PSTN interface.\r\n2. Check that the ICT interoperates with other ICT using VOIP with Session Initiation Protocol (SIP) and using real-time text that conforms to IETF RFC 4103 [i.13].\r\n3. Check that the ICT interoperates with other ICT using RTT that conforms with the IP Multimedia Sub-System (IMS) set of protocols specified in ETSI TS 126 114 [i.10], ETSI TS 122 173 [i.11] and ETSI TS 134 229 [i.12].\r\n4. Check that the ICT interoperates with other ICT using a relevant and applicable common specification that is published and available.\r\n5. Check that the common specification in check 4 includes a method for indicating loss or corruption of characters.', 'Pass: Check 1 or 2 or 3 or both 4 and 5 are true\r\nFail: All of Checks 1, 2, 3 and at least one of 4 or 5 are false'),
(38, '06.2.4', 'Inspection of Measurement data or Test', '1. The ICT under test has RTT send and receive capabilities.\r\n2. A "reference" RTT-capable terminal using mechanisms supported by the ICT system is connected at the other end of an ICT system to the ICT under test.\r\n3. The ICT under test is connected to the ICT system terminated by the "reference" terminal.\r\n4. The different elements of the ICT are in a working status (the connection is active and the terminals are in the relevant RTT mode).', '1. A short sequence is input to the terminal under test.\r\n2. Check the time at which input entry has occurred.\r\n3. Check the period between input entry to the ICT terminal under test and the time when the text is transmitted to the ICT network.', 'Pass: Check 3 is less than or equal to 1 second\r\nFail: Check 3 is greater than 1 second'),
(39, '06.3', 'Inspection', '1. The ICT provides caller identification, or similar telecommunications functions are provided.', '1. Check that the information delivered by each function is available as text.\r\n2. Check that the information delivered by each function is available in another modality.', 'Pass: Both Checks 1 and 2 are true\r\nFail: Check 1 or 2 is false'),
(40, '06.4', 'Inspection', '1. The ICT provides real-time voice-based communication.\r\n2. The ICT provides voice mail, auto-attendant, or interactive voice response facilities.', '1. Check that the ICT offers users a means to access the information without the use of hearing or speech.\r\n2. Check that a user can carry out the tasks provided by the system without the use of hearing or speech.', 'Pass: Checks 1 and 2 are true\r\nFail: Check 1 or 2 is false'),
(41, '06.5.2', 'Inspection', '1. The ICT provides 2 way voice communication.\r\n2. The ICT includes real-time video functionality.', '1. Check that the video communication resolution is QCIF resolution or better.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(42, '06.5.3', 'Inspection', '1. The ICT provides 2 way voice communication.\r\n2. The ICT includes real-time video functionality.', '1. Check that the video communication frame rate is equal to or higher than 12 frames per second.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(43, '06.5.4', 'Measurement', '1. The ICT provides 2 way voice communication.\r\n2. The ICT includes real-time video functionality.', '1. Check that the time difference between the speech and video presented to the user is equal to or less than 100 ms.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(44, '07.1.1', 'Test 1', '1. The ICT displays or processes video with synchronized audio.\r\n2. Captions are provided in the video.', '1. Check that there is a mechanism to display the captions.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(45, '07.1.1', 'Test 2', '1. The ICT displays or processes video with synchronized audio.\r\n2. Closed captions are provided by the content.', '1. Check that there is a mechanism to choose to display the captions.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(46, '07.1.2', 'Inspection', '1. The ICT has a mechanism to display captions.', '1. Check that the mechanism to display the captions preserves the synchronization between the audio and corresponding captions.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(47, '07.1.3', 'Inspection', '1. The ICT transmits converts or records video with synchronized audio.', '1. Check that the ICT preserves caption data such that it can be displayed in a manner consistent with 7.1.1 and 7.1.2.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(48, '07.2.1', 'Inspection', '1. The ICT displays video with synchronized audio.', '1. Check that there is an explicit and separate mechanism for audio description.\r\n2. Check that there is a mechanism to select and play the audio description to the default audio channel.\r\n3. Check that the ICT enables the user to select and play several audio tracks.', 'Pass: Check 1 and 2 are true or 1 is false and 3 is true\r\nFail: Check 1 is true and 2 is false or 1 is false and 3 is false'),
(49, '07.2.2', 'Inspection', '1. The ICT has a mechanism to play audio description.', '1. Check that the synchronization between the audio/visual content and the corresponding audio description is preserved.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(50, '07.2.3', 'Inspection', '1. The ICT transmits converts or records video with synchronized audio.', '1. Check that the ICT preserves audio description data such that it can be played in a manner consistent with 7.2.1 and 7.2.2.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(51, '07.3', 'Inspection', '1. The ICT primarily display materials containing video with associated audio content.', '1. Check that user controls to activate subtitling and audio descriptions are provided to the user at the same level of interaction as the primary media controls.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(52, '08.1.2', 'Inspection', '1. The ICT provides user input or output device connection points.', '1. Check that one type of connection conforms to an industry standard non-proprietary format.\r\n2. Check that one type of connection conforms to an industry standard non-proprietary format through the use of commercially available adapters.', 'Pass: Check 1 or 2 is true\r\nFail: Checks 1 and 2 are false'),
(53, '08.1.3', 'Inspection', '1. The hardware aspects of the ICT conveys visual information using colour coding as a means to indicate an action, to prompt a response, or to distinguish a visual element.', '1. Check that an alternative form of visual coding is provided.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(54, '08.2.1.1', 'Inspection based on measurement data', '1. The ICT hardware has speech output.', '1. Check that the ICT is certified to meet ANSI/TIA-4965 [i.2].\r\n2. Measure the level (in dB) of the speech output at the lowest volume setting.\r\n3. Measure the level (in dB) of the speech output at the highest volume setting.\r\n4. Check that the range between 1 and 2 is greater than or equal to 18 dB.', 'Pass: Check 1 or 4 is true\r\nFail: Check 1 and 4 are false'),
(55, '08.2.1.2', 'Inspection based on measurement data', '1. The ICT hardware has speech output. 2. The volume control is incremental.', '1. Measure the level (in dB) of the speech output at the lowest volume setting.\r\n2. Check if one intermediate step provides a level 12 dB above the lowest volume level measured in step 1.', 'Pass: Check 2 is true\r\nFail: Check 2 is false'),
(56, '08.2.2.1', 'Inspection based on measurement data', '1. The ICT hardware is a fixed line communication device with an audio output that is normally held to the ear. 2. The ICT carries the "T" symbol.', '1. Check that the ICT is certified to meet TIA-1083-A [i.24].\r\n2. Measurements are made according to ETSI ES 200 381-1 [2] which prove that the requirements defined in that standard are fulfilled.', 'Pass: Check 1 or 2 is true\r\nFail: Checks 1 and 2 are false'),
(57, '08.2.2.2', 'Inspection based on measurement data', '1. The ICT hardware is a wireless communication device which is normally held to the ear.', '1. Check that the ICT is certified to meet ANSI/IEEE C63.19 [i.1].\r\n2. Check that the ICT provide a means of magnetic coupling to hearing technologies which meets the requirements of ETSI ES 200 381-2 [3].', 'Pass: Check 1 or 2 is true\r\nFail: Checks 1 and 2 are false'),
(58, '08.3.2.1', 'Inspection and measurement', '1. There is a change in level integral to the ICT.', '1. Check that the change in level is ramped with a slope less than1:48.', 'If check 1 is true then this recommendation is followed.'),
(59, '08.3.2.1', 'Inspection and measurement', '1. There is a change in level integral to the ICT.\r\n2. The change in level is less than or equal to 6,4 mm.', '1. Check that the step is vertical or ramped.', 'If check 1 is true then this recommendation is followed.'),
(60, '08.3.2.1', 'Inspection and measurement', '1. There is a change in level integral to the ICT.\r\n2. The change in level is less than or equal to 13 mm.', '1. Check that the ramp has a slope less than 1:2.', 'If check 1 is true then this recommendation is followed.'),
(66, '08.3.2.2', 'Inspection and measurement', '1. The operating area is integral to the ICT.', '1. Check that the operating area is a rectangle with minimum dimension on one edge of 760 mm.\r\n2. Check that the operating area is a rectangle with the minimum dimension on the other edge of 1 220 mm.', 'If check 1 is true then this recommendation is followed.'),
(67, '08.3.2.3.1', 'Inspection', '1. Access space is integral to the ICT.', '1. Check that one full side of the space is unobstructed.', 'If check 1 is true then this recommendation is followed.'),
(68, '08.3.2.3.2', 'Inspection and measurement', '1. The operating area is inside an alcove integral to the ICT.\r\n2. The depth of the alcove is greater than 610 mm.\r\n3. A forward approach is necessary.', '1. Check that the width of the alcove is greater than 915 mm.', 'If check 1 is true then this recommendation is followed.'),
(69, '08.3.2.3.3', 'Inspection and measurement', '1. The operating area is inside an alcove integral to the ICT.\r\n2. The depth of the alcove is greater than 380 mm.\r\n3. A parallel approach is possible.', '1. Check that the width of the access space is greater than 1 525 mm.', 'If check 1 is true then this recommendation is followed.'),
(70, '08.3.2.4', 'Inspection and measurement', '1. The space under an obstacle integral to the ICT is part of an access space.', '1. Check that the width of the knee clearance is greater than 760 mm.\r\n2. Check that the width of the toe clearance is greater than 760 mm.', 'If check 1 is true then this recommendation is followed.'),
(71, '08.3.2.5', 'Inspection and measurement', '1. The ICT is free-standing.\r\n2. There is a space under any obstacle integral to the ICT that is less than 230 mm over the floor.', '1. Check that the toe clearance does not extend more than 635 mm under the obstacle.', 'If check 1 is true then this recommendation is followed.'),
(72, '08.3.2.5', 'Inspection and measurement', '1. The ICT is free-standing.\r\n2. There is a space under any obstacle integral to the ICT that is less than 230 mm over the floor.', '1. Check that the toe clearance extends more than 430 mm under the whole obstacle.', 'If check 1 is true then this recommendation is followed.'),
(73, '08.3.2.5', 'Inspection and measurement', '1. The ICT is free-standing.\r\n2. There is an obstacle integral to the ICT at less than 230 mm over the floor.', '1. Check that the toe clearance extends less than 150 mm under the obstacle.', 'If check 1 is true then this recommendation is followed.'),
(74, '08.3.2.6', 'Inspection and measurement', '1. There is an obstacle that is integral to the ICT.\r\n2. The obstacle is between 230 mm and 685 mm above the floor.', '1. Check that there is a clearance less than 635 mm at a height of 230 mm.', 'If check 1 is true then this recommendation is followed.'),
(75, '08.3.2.6', 'Inspection and measurement', '1. There is an obstacle that is integral to the ICT.\r\n2. The obstacle is between 230 mm and 685 mm above the floor.', '1. Check that there is a clearance more than 280 mm at a height of 230 mm.', 'If check 1 is true then this recommendation is followed.'),
(76, '08.3.2.6', 'Inspection and measurement', '1. There is an obstacle that is integral to the ICT.\r\n2. The obstacle is between 230 mm and 685 mm above the floor.', '1. Check that there is a clearance more than 205 mm at a height of 685 mm', 'If check 1 is true then this recommendation is followed.'),
(77, '08.3.2.6', 'Inspection and measurement', '1. There is an obstacle that is integral to the ICT.\r\n2. The obstacle is between 230 mm and 685 mm above the floor.', '1. Check that the reduction in depth of the clearance is no greater than 25 mm for each 150 mm in height.', 'If check 1 is true then this recommendation is followed.'),
(78, '08.3.3.1.1', 'Inspection and measurement', '1. The access space is integral to the ICT.\r\n2. There is an unobstructed access to the controls.', '1. Check that the height of the topmost essential control is no higher than 1 220 mm above the floor contact of the ICT.', 'If check 1 is true then this recommendation is followed.'),
(79, '08.3.3.1.2', 'Inspection and measurement', '1. The access space is integral to the ICT.\r\n2. There is an unobstructed access to the controls.', '1. Check that the height of the lowest essential control is no lower than 380 mm above the floor contact of the ICT.', 'If check 1 is true then this recommendation is followed.'),
(80, '08.3.3.1.3.1', 'Inspection and measurement', '1. The access space is integral to the ICT.\r\n2. There is an integral obstructed access to the controls.', '1. Check that there is clear floor space greater than the required reach depth over the obstruction.', 'If check 1 is true then this recommendation is followed.'),
(81, '08.3.3.1.3.2', 'Inspection and measurement', '1. The access space is integral to the ICT.\r\n2. There is an integral obstructed access to the controls.\r\n3. The obstruction is less than 510 mm', '1. Check that the height of the topmost essential control is no higher than 1 220 mm above the floor contact of the ICT.', 'If check 1 is true then this recommendation is followed.'),
(82, '08.3.3.1.3.3', 'Inspection and measurement', '1. The access space is integral to the ICT.\r\n2. There is an integral obstructed access to the controls.\r\n3. The obstruction is between 510 mm and 635 mm.', '1. Check that the height of the topmost essential control is no higher than 1 120 mm above the floor contact of the ICT.', 'If check 1 is true then this recommendation is followed.'),
(83, '08.3.3.2.1', 'Inspection and measurement', '1. The access space is integral to the ICT.\r\n2. A parallel approach to the ICT is possible.\r\n3. The side reach is unobstructed or obstructed by a part less than 255 mm wide.', '1. Check that the height of the topmost essential control is less than or equal to 1 220 mm above the floor contact of the ICT.', 'If check 1 is true then this recommendation is followed.'),
(84, '08.3.3.2.2', 'Inspection and measurement', '1. The access space is integral to the ICT.\r\n2. A parallel approach to the ICT is possible.\r\n3. The side reach is unobstructed or obstructed by a part less than 255 mm wide.', '1. Check that the height of the lowest essential control is greater than or equal to 380 mm above the floor contact of the ICT.', 'If check 1 is true then this recommendation is followed.'),
(85, '08.3.3.2.3.1', 'Inspection and measurement', '1. The access space is integral to the ICT.\r\n2. A parallel approach to the ICT is possible.\r\n3. There is an obstacle integral to the ICT with a height less than 865 mm.\r\n4. The side reach is obstructed by a part less than 255 mm wide.', '1. Check that the height of the topmost essential control no higher than 1 220 mm above the floor contact of the ICT.', 'If check 1 is true then this recommendation is followed.'),
(86, '08.3.3.2.3.2', 'Inspection and measurement', '1. The access space is integral to the ICT.\r\n2. A parallel approach to the ICT is possible.\r\n3. There is an obstacle integral to the ICT with a height less than 865 mm.\r\n4. The side reach is obstructed by a part more than 255 mm and less than 610 mm wide.', '1. Check that the height of the topmost essential control is no higher than 1 170 mm above the floor contact of the ICT.', 'If check 1 is true then this recommendation is followed.'),
(87, '08.3.4', 'Inspection and measurement', '1. The operating area is integral to the ICT.\r\n2. A display screen is provided.', '1. Check that the screen is readable from a point located 40 inches (1 015 mm) above the centre of the clear floor space.', 'If check 1 is true then this recommendation is followed.'),
(88, '08.3.5', 'Inspection and measurement', '1. The ICT is intended to be installed.', '1. Check that instructions are made available which outline a method to install the ICT in a manner that ensures that the dimensions of the integral spaces of the ICT conform to clauses 8.3.2 to 8.3.4.', 'If check 1 is true then this recommendation is followed.'),
(89, '08.4.1', 'Inspection', '1. The ICT has physical numeric keys arranged in a 12-key telephone keypad layout.', '1. Check that the number five key is tactilely distinct from the other keys of the keypad.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(90, '08.4.2.1', 'Inspection', '1. The ICT has operable parts that requires grasping, pinching, or twisting of the wrist to operate.', '1. Check that there is an accessible alternative means of operation that does not require these actions.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(91, '08.4.2.2', 'Inspection and measurement', '1. The ICT has a control which requires a force greater than 22,2 N to operate it.', '1. Check that an accessible alternative means of operation is provided that requires a force less than or equal to 22,2 N.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(92, '08.4.3', 'Inspection and measurement', '1. ICT provides keys, tickets or fare cards, and their orientation is important for further use.', '1. Check that keys, tickets or fare cards have an orientation that is tactilely discernible.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(93, '08.5', 'Inspection and measurement', '1. The ICT is designed for shared use.\r\n2. Speech output is available.', '1. Check that a tactile indication of the means to initiate the speech mode of operation is provided.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(94, '09.2.01', 'Inspection', '1. The ICT is a web page.', '1. Check that the web page does not fail WCAG 2.0 Success Criterion 1.1.1 Non-text content [4].', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(95, '09.2.02', 'Inspection', '1. The ICT is a web page.', '1. Check that the web page does not fail WCAG 2.0 Success Criterion 1.2.1 Audio-only and video-only (pre-recorded) [4].', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(96, '09.2.03', 'Inspection', '1. The ICT is a web page.', '1. Check that the web page does not fail WCAG 2.0 Success Criterion 1.2.2 Captions (Pre-recorded) [4].', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(97, '09.2.04', 'Inspection', '1. The ICT is a web page.', '1. Check that the web page does not fail WCAG 2.0 Success Criterion 1.2.3 Audio Description or Media Alternative (Pre-recorded) [4].', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(98, '09.2.05', 'Inspection', '1. The ICT is a web page.', '1. Check that the web page does not fail WCAG 2.0 Success Criterion 1.2.4 Captions (Live) [4].', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(99, '09.2.06', 'Inspection', '1. The ICT is a web page.', '1. Check that the web page does not fail WCAG 2.0 Success Criterion 1.2.5 Audio-Description (Pre-recorded) [4].', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(100, '09.2.07', 'Inspection', '1. The ICT is a web page.', '1. Check that the web page does not fail WCAG 2.0 Success Criterion 1.3.1 Info and Relationships [4].', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(101, '09.2.08', 'Inspection', '1. The ICT is a web page.', '1. Check that the web page does not fail WCAG 2.0 Success Criterion 1.3.2 Meaningful Sequence [4].', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(102, '09.2.09', 'Inspection', '1. The ICT is a web page.', '1. Check that the web page does not fail WCAG 2.0 Success Criterion 1.3.3 Sensory Characteristics [4].', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(103, '09.2.10', 'Inspection', '1. The ICT is a web page.', '1. Check that the web page does not fail WCAG 2.0 Success Criterion 1.4.1 Use of Colour [4].', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(104, '09.2.11', 'Inspection', '1. The ICT is a web page.', '1. Check that the web page does not fail WCAG 2.0 Success Criterion 1.4.2 Audio Control [4].', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(105, '09.2.12', 'Inspection', '1. The ICT is a web page.', '1. Check that the web page does not fail WCAG 2.0 Success Criterion 1.4.3 Contrast (Minimum) [4].', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(106, '09.2.13', 'Inspection', '1. The ICT is a web page.', '1. Check that the web page does not fail WCAG 2.0 Success Criterion 1.4.4 Resize text [4].', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(107, '09.2.14', 'Inspection', '1. The ICT is a web page.', '1. Check that the web page does not fail WCAG 2.0 Success Criterion 1.4.5 Images of Text [4].', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(108, '09.2.15', 'Inspection', '1. The ICT is a web page.', '1. Check that the web page does not fail WCAG 2.0 Success Criterion 2.1.1 Keyboard [4].', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(109, '09.2.16', 'Inspection', '1. The ICT is a web page.', '1. Check that the web page does not fail WCAG 2.0 Success Criterion 2.1.2 No Keyboard Trap [4].', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(110, '09.2.17', 'Inspection', '1. The ICT is a web page.', '1. Check that the web page does not fail WCAG 2.0 Success Criterion 2.2.1 Timing Adjustable [4].', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(111, '09.2.18', 'Inspection', '1. The ICT is a web page.', '1. Check that the web page does not fail WCAG 2.0 Success Criterion 2.2.2 Pause, Stop, Hide [4].', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(112, '09.2.19', 'Inspection', '1. The ICT is a web page.', '1. Check that the web page does not fail WCAG 2.0 Success Criterion 2.3.1 Three Flashes or Below Threshold [4].', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(113, '09.2.20', 'Inspection', '1. The ICT is a web page.', '1. Check that the web page does not fail WCAG 2.0 Success Criterion 2.4.1 Bypass Blocks [4].', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(114, '09.2.21', 'Inspection', '1. The ICT is a web page.', '1. Check that the web page does not fail WCAG 2.0 Success Criterion 2.4.2 Page Titled [4].', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(115, '09.2.22', 'Inspection', '1. The ICT is a web page.', '1. Check that the web page does not fail WCAG 2.0 Success Criterion 2.4.3 Focus Order [4].', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(116, '09.2.23', 'Inspection', '1. The ICT is a web page.', '1. Check that the web page does not fail WCAG 2.0 Success Criterion 2.4.4 Link Purpose (In Context) [4].', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(117, '09.2.24', 'Inspection', '1. The ICT is a web page.', '1. Check that the web page does not fail WCAG 2.0 Success Criterion 2.4.5 Multiple Ways [4].', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(118, '09.2.25', 'Inspection', '1. The ICT is a web page.', '1. Check that the web page does not fail WCAG 2.0 Success Criterion 2.4.6 Headings and Labels [4].', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(119, '09.2.26', 'Inspection', '1. The ICT is a web page.', '1. Check that the web page does not fail WCAG 2.0 Success Criterion 2.4.7 Focus Visible [4].', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(120, '09.2.27', 'Inspection', '1. The ICT is a web page.', '1. Check that the web page does not fail WCAG 2.0 Success Criterion 3.1.1 Language of Page [4].', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(121, '09.2.28', 'Inspection', '1. The ICT is a web page.', '1. Check that the web page does not fail WCAG 2.0 Success Criterion 3.1.2 Language of Parts [4].', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(122, '09.2.29', 'Inspection', '1. The ICT is a web page.', '1. Check that the web page does not fail WCAG 2.0 Success Criterion 3.2.1 On Focus [4].', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(123, '09.2.30', 'Inspection', '1. The ICT is a web page.', '1. Check that the web page does not fail WCAG 2.0 Success Criterion 3.2.2 On Input [4].', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(124, '09.2.31', 'Inspection', '1. The ICT is a web page.', '1. Check that the web page does not fail WCAG 2.0 Success Criterion 3.2.3 Consistent Navigation [4].', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(125, '09.2.32', 'Inspection', '1. The ICT is a web page.', '1. Check that the web page does not fail WCAG 2.0 Success Criterion 3.2.4 Consistent Identification [4].', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(126, '09.2.33', 'Inspection', '1. The ICT is a web page.', '1. Check that the web page does not fail WCAG 2.0 Success Criterion 3.3.1 Error Identification [4].', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(127, '09.2.34', 'Inspection', '1. The ICT is a web page.', '1. Check that the web page does not fail WCAG 2.0 Success Criterion 3.3.2 Labels or Instructions [4].', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(128, '09.2.35', 'Inspection', '1. The ICT is a web page.', '1. Check that the web page does not fail WCAG 2.0 Success Criterion 3.3.3 Error Suggestion [4].', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(129, '09.2.36', 'Inspection', '1. The ICT is a web page.', '1. Check that the web page does not fail WCAG 2.0 Success Criterion 3.3.4 Error Prevention (Legal, Financial, Data) [4].', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(130, '09.2.37', 'Inspection', '1. The ICT is a web page.', '1. Check that the web page does not fail WCAG 2.0 Success Criterion 4.1.1 Parsing [4].', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(131, '09.2.38', 'Inspection', '1. The ICT is a web page.', '1. Check that the web page does not fail WCAG 2.0 Success Criterion 4.1.2 Name, Role, Value [4].', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(132, '09.3', 'Inspection', '1. The ICT is a web page.', '1. Check that the web page satisfies WCAG 2.0 [4] conformance requirement "1: Conformance level" at level AA.\r\n2. Check that the web page satisfies WCAG 2.0 [4] conformance requirement "2: Full pages".\r\n3. Check that the web page satisfies WCAG 2.0 [4] conformance requirement "3: Complete processes".\r\n4. Check that the web page satisfies WCAG 2.0 [4] conformance requirement "4: Only Accessibility-Supported Ways of Using Technologies".\r\n5. Check that the web page satisfies WCAG 2.0 [4] conformance requirement "5: Non-interference".', 'Pass: All checks are true\r\nFail: Any check is false'),
(133, '10.2.01', 'Inspection', '1. The ICT is a non-web document.', '1. Check that the document does not fail the Success Criterion in Table 10.1.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(134, '10.2.02', 'Inspection', '1. The ICT is a non-web document.', '1. Check that the document does not fail the Success Criterion in Table 10.2.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(135, '10.2.03', 'Inspection', '1. The ICT is a non-web document.', '1. Check that the document does not fail the Success Criterion in Table 10.3.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(136, '10.2.04', 'Inspection', '1. The ICT is a non-web document.', '1. Check that the document does not fail the Success Criterion in Table 10.4.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(137, '10.2.05', 'Inspection', '1. The ICT is a non-web document.', '1. Check that the document does not fail the Success Criterion in Table 10.5.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(138, '10.2.06', 'Inspection', '1. The ICT is a non-web document.', '1. Check that the document does not fail the Success Criterion in Table 10.6.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(139, '10.2.07', 'Inspection', '1. The ICT is a non-web document.', '1. Check that the document does not fail the Success Criterion in Table 10.7.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(140, '10.2.08', 'Inspection', '1. The ICT is a non-web document.', '1. Check that the document does not fail the Success Criterion in Table 10.8.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(141, '10.2.09', 'Inspection', '1. The ICT is a non-web document.', '1. Check that the document does not fail the Success Criterion in Table 10.9.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(142, '10.2.10', 'Inspection', '1. The ICT is a non-web document.', '1. Check that the document does not fail the Success Criterion in Table 10.10.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(143, '10.2.11', 'Inspection', '1. The ICT is a non-web document.', '1. Check that the document does not fail the Success Criterion in Table 10.11.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(144, '10.2.12', 'Inspection', '1. The ICT is a non-web document.', '1. Check that the document does not fail the Success Criterion in Table 10.12.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(145, '10.2.13', 'Inspection', '1. The ICT is a non-web document.', '1. Check that the document does not fail the Success Criterion in Table 10.13.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(146, '10.2.14', 'Inspection', '1. The ICT is a non-web document.', '1. Check that the document does not fail the Success Criterion in Table 10.14.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(147, '10.2.15', 'Inspection', '1. The ICT is a non-web document.', '1. Check that the document does not fail the Success Criterion in Table 10.15.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(148, '10.2.16', 'Inspection', '1. The ICT is a non-web document.', '1. Check that the document does not fail the Success Criterion in Table 10.16.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(149, '10.2.17', 'Inspection', '1. The ICT is a non-web document.', '1. Check that the document does not fail the Success Criterion in Table 10.17.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(150, '10.2.18', 'Inspection', '1. The ICT is a non-web document.', '1. Check that the document does not fail the Success Criterion in Table 10.18.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(151, '10.2.19', 'Inspection', '1. The ICT is a non-web document.', '1. Check that the document does not fail the Success Criterion in Table 10.19.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(152, '10.2.21', 'Inspection', '1. The ICT is a non-web document.', '1. Check that the document does not fail the Success Criterion in Table 10.21.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(153, '10.2.22', 'Inspection', '1. The ICT is a non-web document.', '1. Check that the document does not fail the Success Criterion in Table 10.22.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(154, '10.2.23', 'Inspection', '1. The ICT is a non-web document.', '1. Check that the document does not fail the Success Criterion in Table 10.23.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(155, '10.2.25', 'Inspection', '1. The ICT is a non-web document.', '1. Check that the document does not fail the Success Criterion in Table 10.25.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(156, '10.2.26', 'Inspection', '1. The ICT is a non-web document.', '1. Check that the document does not fail the Success Criterion in Table 10.26.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(157, '10.2.27', 'Inspection', '1. The ICT is a non-web document.', '1. Check that the document does not fail the Success Criterion in Table 10.27.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(158, '10.2.28', 'Inspection', '1. The ICT is a non-web document.', '1. Check that the document does not fail the Success Criterion in Table 10.28.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(159, '10.2.29', 'Inspection', '1. The ICT is a non-web document.', '1. Check that the document does not fail the Success Criterion in Table 10.29.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(160, '10.2.30', 'Inspection', '1. The ICT is a non-web document.', '1. Check that the document does not fail the Success Criterion in Table 10.30.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(161, '10.2.33', 'Inspection', '1. The ICT is a non-web document.', '1. Check that the document does not fail the Success Criterion in Table 10.33.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(162, '10.2.34', 'Inspection', '1. The ICT is a non-web document.', '1. Check that the document does not fail the Success Criterion in Table 10.34.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(163, '10.2.35', 'Inspection', '1. The ICT is a non-web document.', '1. Check that the document does not fail the Success Criterion in Table 10.35.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(164, '10.2.36', 'Inspection', '1. The ICT is a non-web document.', '1. Check that the document does not fail the Success Criterion in Table 10.36.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(165, '10.2.37', 'Inspection', '1. The ICT is a non-web document.', '1. Check that the document does not fail the Success Criterion in Table 10.37.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(166, '10.2.38', 'Inspection', '1. The ICT is a non-web document.', '1. Check that the document does not fail the Success Criterion in Table 10.38.', 'Pass: Check 1 is true\r\nFail: Check 1 is false');
INSERT INTO `compliance` (`idCompliance`, `idClause`, `typeOfAssessment`, `preconditions`, `procedure`, `result`) VALUES
(167, '11.2.1.01', 'Inspection', '1. The ICT is non-web software that provides a user interface.\r\n2. The software provides support to assistive technologies for screen reading.', '1. Check that the software does not fail the Success Criterion in Table 11.1.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(168, '11.2.1.02', 'Inspection', '1. The ICT is non-web software that provides a user interface.\r\n2. The software provides support to assistive technologies for screen reading.\r\n3. Pre-recorded auditory information is not needed to enable the use of closed functions of ICT.', '1. Check that the software does not fail the Success Criterion in Table 11.2.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(169, '11.2.1.03', 'Inspection', '1. The ICT is non-web software that provides a user interface.', '1. Check that the software does not fail the Success Criterion in Table 11.3.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(170, '11.2.1.04', 'Inspection', '1. The ICT is non-web software that provides a user interface.\r\n2. The software provides support to assistive technologies for screen reading.', '1. Check that the software does not fail the Success Criterion in Table 11.4.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(171, '11.2.1.05', 'Inspection', '1. The ICT is non-web software that provides a user interface.', '1. Check that the software does not fail the Success Criterion in Table 11.5.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(172, '11.2.1.06', 'Inspection', '1. The ICT is non-web software that provides a user interface.', '1. Check that the software does not fail the Success Criterion in Table 11.6.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(173, '11.2.1.07', 'Inspection', '1. The ICT is non-web software that provides a user interface.\r\n2. The software provides support to assistive technologies for screen reading.', '1. Check that the software does not fail the Success Criterion in Table 11.7.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(174, '11.2.1.08', 'Inspection', '1. The ICT is non-web software that provides a user interface.\r\n2. The software provides support to assistive technologies for screen reading.', '1. Check that the software does not fail the Success Criterion in Table 11.8.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(175, '11.2.1.09', 'Inspection', '1. The ICT is non-web software that provides a user interface.', '1. Check that the software does not fail the Success Criterion in Table 11.9.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(176, '11.2.1.10', 'Inspection', '1. The ICT is non-web software that provides a user interface.', '1. Check that the software does not fail the Success Criterion in Table 11.10.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(177, '11.2.1.11', 'Inspection', '1. The ICT is non-web software that provides a user interface.', '1. Check that the software does not fail the Success Criterion in Table 11.11.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(178, '11.2.1.12', 'Inspection', '1. The ICT is non-web software that provides a user interface.', '1. Check that the software does not fail the Success Criterion in Table 11.12.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(179, '11.2.1.13', 'Inspection', '1. The ICT is non-web software that provides a user interface.\r\n2. The software provides support to enlargement features of platform or assistive technology.', '1. Check that the software does not fail the Success Criterion in Table 11.13.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(180, '11.2.1.14', 'Inspection', '1. The ICT is non-web software that provides a user interface.\r\n2. The software provides support to assistive technologies for screen reading.', '1. Check that the software does not fail the Success Criterion in Table 11.14.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(181, '11.2.1.15', 'Inspection', '1. The ICT is non-web software that provides a user interface.\r\n2. The software provides support to keyboards or a keyboard interface.', '1. Check that the software does not fail the Success Criterion in Table 11.15.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(182, '11.2.1.16', 'Inspection', '1. The ICT is non-web software that provides a user interface.', '1. Check that the software does not fail the Success Criterion in Table 11.16.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(183, '11.2.1.17', 'Inspection', '1. The ICT is non-web software that provides a user interface.', '1. Check that the software does not fail the Success Criterion in Table 11.17.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(184, '11.2.1.18', 'Inspection', '1. The ICT is non-web software that provides a user interface.', '1. Check that the software does not fail the Success Criterion in Table 11.18.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(185, '11.2.1.19', 'Inspection', '1. The ICT is non-web software that provides a user interface.', '1. Check that the software does not fail the Success Criterion in Table 11.19.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(186, '11.2.1.22', 'Inspection', '1. The ICT is non-web software that provides a user interface.', '1. Check that the software does not fail the Success Criterion in Table 11.22.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(187, '11.2.1.23', 'Inspection', '1. The ICT is non-web software that provides a user interface.', '1. Check that the software does not fail the Success Criterion in Table 11.23.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(188, '11.2.1.25', 'Inspection', '1. The ICT is non-web software that provides a user interface.', '1. Check that the software does not fail the Success Criterion in Table 11.25.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(189, '11.2.1.26', 'Inspection', '1. The ICT is non-web software that provides a user interface.', '1. Check that the software does not fail the Success Criterion in Table 11.26.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(190, '11.2.1.27', 'Inspection', '1. The ICT is non-web software that provides a user interface.\r\n2. The software provides support to assistive technologies for screen reading.', '1. Check that the software does not fail the Success Criterion in Table 11.27.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(191, '11.2.1.29', 'Inspection', '1. The ICT is non-web software that provides a user interface.', '1. Check that the software does not fail the Success Criterion in Table 11.29.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(192, '11.2.1.30', 'Inspection', '1. The ICT is non-web software that provides a user interface.', '1. Check that the software does not fail the Success Criterion in Table 11.30.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(193, '11.2.1.33', 'Inspection', '1. The ICT is non-web software that provides a user interface.\r\n2. The software provides support to assistive technologies for screen reading.', '1. Check that the software does not fail the Success Criterion in Table 11.33.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(194, '11.2.1.34', 'Inspection', '1. The ICT is non-web software that provides a user interface.', '1. Check that the software does not fail the Success Criterion in Table 11.34.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(195, '11.2.1.35', 'Inspection', '1. The ICT is non-web software that provides a user interface.', '1. Check that the software does not fail the Success Criterion in Table 11.35.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(196, '11.2.1.36', 'Inspection', '1. The ICT is non-web software that provides a user interface.', '1. Check that the software does not fail the Success Criterion in Table 11.36.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(197, '11.2.1.37', 'Inspection', '1. The ICT is non-web software that provides a user interface.\r\n2. The software provides support to at least one assistive technology.', '1. Check that the software does not fail the Success Criterion in Table 11.37.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(198, '11.2.1.38', 'Inspection', '1. The ICT is non-web software that provides a user interface.\r\n2. The software provides support to at least one assistive technology.', '1. Check that the software does not fail the Success Criterion in Table 11.38.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(199, '11.2.2.01', 'Testing', '1. The ICT is non-web software that provides a user interface.\r\n2. The user interface is closed to assistive technologies for screen reading.\r\n3. Non-text content is presented to users via speech output.', '1. Check that speech output is provided as an alternative for non-text content.\r\n2. Check that the non-text content is not pure decoration.\r\n3. Check that the non-text content is not used only for visual formatting.\r\n4. Check that the speech output follows the guidance for "text alternative" described in WCAG 2.0 Success Criterion 1.1.1.', 'Pass: Check (1 and 2 and 3 and 4 are true) or (1 and 2 are false) or (1 and 3 are false)\r\nFail: Checks (1 true and 2 false) or (1 true and 3 false) or (1 and 2 and 3 are true and 4 is false)'),
(200, '11.2.2.02.1', 'Inspection', '1. ICT is non-web software that provides a user interface.\r\n2. The user interface is closed to assistive technologies for screen reading.\r\n3. Pre-recorded auditory information is needed to enable the use of closed functions of ICT.', '1. Check that the visual information is equivalent to the pre-recorded auditory output.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(201, '11.2.2.02.2', 'Inspection', '1. ICT is non-web software that provides a user interface.\r\n2. The user interface is closed to assistive technologies for screen reading.\r\n3. Pre-recorded video content is needed to enable the use of closed functions of ICT.\r\n4. Speech output is provided as non-visual access to non-text content displayed on closed functionality.', '1. Check that the speech output presents equivalent information for the pre-recorded video content.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(202, '11.2.2.04', 'Inspection', '1. ICT is non-web software that provides a user interface.\r\n2. The user interface is closed to assistive technologies for screen reading.\r\n3. Speech output is provided as non-visual access to non-text content displayed on closed functionality.', '1. Check that the speech output presents equivalent information for the pre-recorded video content.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(203, '11.2.2.13', 'Inspection and measurement', '1. ICT is non-web software that provides a user interface.\r\n2. The user interface is closed to enlargement features of platform or assistive technology.\r\n3. A viewing distance is specified by the supplier.', '1. Measure the height of a capital letter H.\r\n2. Check that it subtends an angle of at least 0,7 degrees at the specified viewing distance.', 'Pass: Check 2 is true\r\nFail: Check 2 is false'),
(204, '11.2.2.15', 'Inspection', '1. ICT is non-web software that provides a user interface.\r\n2. The user interface is closed to keyboards or keyboard interfaces.', '1. Check that all functionality of the user interface is operable without vision.', 'Pass: Check 2 is true\r\nFail: Check 2 is false'),
(205, '11.2.2.27', 'Testing', '1. ICT is non-web software that provides a user interface. 2. The user interface is closed to assistive technologies for screen reading.\r\n3. The speech output is provided as non-visual access to closed functionality.\r\n4. The speech output is not proper names, technical terms, words of indeterminate. language, and words or phrases that have become part of the vernacular of the immediately surrounding text.\r\n5. The content is not generated externally and is under the control of the ICT vendor.\r\n6. The displayed languages can be selected using non-visual access.\r\n7. The user has not selected a speech language that is different from the language of the displayed content.', '1. Check that the speech output is in the same human language of the displayed content provided.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(206, '11.2.2.33', 'Testing', '1. ICT is non-web software that provides a user interface.\r\n2. The user interface is closed to assistive technologies for screen reading.\r\n3. Speech output is provided as non-visual access to closed functionality.\r\n4. An input error is automatically detected.', '1. Check that speech output identifies the item that is in error.\r\n2. Check that the speech output describes the item that is in error.', 'Pass: Checks 1 and 2 are true\r\nFail: Check 1 or check 2 false'),
(207, '11.3.1', 'Inspection', '1. The software has closed functionality.', '1. Check that the closed functionality conforms to clause 5.1.', 'If check 1 is true, the software is not required to conform to clauses 11.3.2 to 11.3.17\r\nIf check 1 is false the software is required to conform to clauses 11.3.2 to 11.3.17'),
(208, '11.3.2.01', 'Inspection', '1. The software evaluated is platform software.', '1. Check that the platform software documentation includes information about platform services that may be used by software that provides a user interface to interoperate with assistive technology.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(209, '11.3.2.02', 'Inspection', '1. The software evaluated is platform software.', '1. Check that the platform software documentation includes information about platform accessibility services that enables assistive technology to interoperate with software that provides a user interface running on the platform software.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(210, '11.3.2.03', 'Inspection', '1. The software evaluated is software that provides a user interface.', '1. Check that the software uses the applicable documented platform accessibility services.\r\n2. Check that the software can meet the applicable requirements 11.3.2.5 to 11.3.2.17 whilst using the documented platform accessibility services.\r\n3. Check that the software can meet requirements 11.3.2.5 to 11.3.2.17 whilst using the documented platform accessibility services and other documented services.', 'Pass: Check 1 is true and check 2 or check 3 is true\r\nFail: Check 1 or check 3 is false'),
(211, '11.3.2.04', 'Inspection', '1. The ICT is assistive technology.', '1. Check that the assistive technology uses the documented platform accessibility services.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(212, '11.3.2.05', 'Inspection', '1. The software evaluated is software that provides a user interface.', '1. Check that the user interface element''s role is programmatically determinable by assistive technologies.\r\n2. Check that the user interface element''s state(s) is programmatically determinable by assistive technologies.\r\n3. Check that the user interface element''s boundary is programmatically determinable by assistive technologies.\r\n4. Check that the user interface element''s name is programmatically determinable by assistive technologies.\r\n5. Check that the user interface element''s description is programmatically determinable by assistive technologies.', 'Pass: Checks 1, 2, 3, 4 and 5 are true\r\nFail: Check 1 or 2 or 3 or 4 or 5 is false'),
(213, '11.3.2.06', 'Inspection', '1. The software evaluated is software that provides a user interface.\r\n2. There are data tables in the user interface.', '1. Select a data table in which the tests are to be performed.\r\n2. Check that each cell''s row is programmatically determinable by assistive technologies.\r\n3. Check that each cell''s column is programmatically determinable by assistive technologies.\r\n4. Check that each cell''s row header, if the row header exists, is programmatically determinable by assistive technologies.\r\n5. Check that each cell''s column header, if the column header exists, is programmatically determinable by assistive technologies.', 'Pass: Checks 2, 3, 4 and 5 are true\r\nFail: Check 2 or 3 or 4 or 5 is false'),
(214, '11.3.2.07', 'Inspection', '1. The software evaluated is software that provides a user interface.\r\n2. There are user interface elements that can have values.', '1. Select a user interface element that can have a value.\r\n2. Check that the current value is programmatically determinable by assistive technologies.\r\n3. If the user interface element conveys information about a range of values, check that the minimum value is programmatically determinable by assistive technologies.\r\n4. If the user interface element conveys information about a range of values, check that the maximum value is programmatically determinable by assistive technologies.', 'Pass: Checks 2, 3 and 4 are true\r\nFail: Check 2 or 3 or 4 is false'),
(215, '11.3.2.08', 'Inspection', '1. The software evaluated is software that provides a user interface.\r\n2. There are user interface elements that are labels of other user interface elements.', '1. Obtain the information of each user interface element.\r\n2. Check that the user interface element''s information includes the relationship with the user interface element that is its label, if the current user interface element has a label, and that this relationship is programmatically determinable by assistive technologies.\r\n3. Check that the user interface element''s information includes the relationship with the user interface element that it is labelling, if the current user interface element is a label, and that this relationship is programmatically determinable by assistive technologies.', 'Pass: Checks 2 or 3 are true\r\nFail: Check 2 and 3 are false'),
(216, '11.3.2.09', 'Inspection', '1. The software evaluated is software that provides a user interface.\r\n2. There are user interface elements that are parents of other user interface elements in a hierarchical structure.', '1. For user interface elements that have a parent, check that the user interface element''s information includes the relationship with the user interface element that is its parent.\r\n2. Check that the user interface elements that are parents of the user interface element selected in check 1, include the relationship with the user interface elements that are its children in their information, and that this relationship is programmatically determinable by assistive technologies.\r\n3. For user interface elements that are a parent of other user interface elements, check that the user interface element''s information includes the relationship with the user interface elements that are its children, and that this relationship is programmatically determinable by assistive technologies.\r\n4. Check that the user interface elements that are a child of the user interface element selected in check 3, include the relationship with the user interface elements that are its parents in their information, and that this relationship is programmatically determinable by assistive technologies.', 'Pass: Checks 1 or 2 is true and check 3 or 4 is true\r\nFail: Checks 1 and 2 are false or check 3 and 4 are false'),
(217, '11.3.2.10', 'Inspection', '1. The software evaluated is software that provides a user interface.\r\n2. There is text rendered to the screen.', '1. For instances of text rendered to the screen, check that the text''s information includes its text content, and that this information is programmatically determinable by assistive technologies.\r\n2. For instances of text rendered to the screen, check that the text''s information includes its attributes, and that this information is programmatically determinable by assistive technologies.\r\n3. For instances of text rendered to the screen, check that the text''s information includes its boundary, and that this information is programmatically determinable by assistive technologies.', 'Pass: Checks 1, 2 and 3 are true\r\nFail: Check 1 or 2 or 3 is false'),
(218, '11.3.2.11', 'Inspection', '1. The software evaluated is software that provides a user interface.\r\n2. There are user interface elements that have actions that can be executed by the user.', '1. Check that the user interface element''s information includes the list of actions that can be executed.\r\n2. Check that this list is programmatically determinable by assistive technologies.', 'Pass: Checks 1 and 2 are true\r\nFail: Check 1 or 2 is false'),
(219, '11.3.2.12', 'Inspection and Testing', '1. The software evaluated is software that provides a user interface.\r\n2. There are user interface elements that have actions that can be executed by the user.\r\n3. The security requirements permit assistive technology to programmatically execute user actions.', '1. Check that the user interface element''s information includes the list of actions that can be executed by assistive technologies according to 11.3.2.11.\r\n2. Check that all the actions in the list can successfully be executed by assistive technologies.', 'Pass: Checks 1 and 2 are true\r\nFail: Check 1 or 2 is false'),
(220, '11.3.2.13', 'Inspection and Testing', '1. The software evaluated is software that provides a user interface.\r\n2. There are user interface elements that enable text editing.', '1. Check that the user interface element''s information includes mechanisms to track focus, text insertion point and selection attributes.\r\n2. Check that this information is programmatically determinable by assistive technologies.\r\n3. Activate those tracking mechanisms.\r\n4. As a user, use the text editing functionality in the evaluated software product.\r\n5. Check that the tracking of focus, text insertion point and selection attributes work.', 'Pass: Checks 2 and 5 are true\r\nFail: Check 1 or 5 is false'),
(221, '11.3.2.14', 'Testing', '1. The software evaluated is software that provides a user interface.\r\n2. There are user interface elements that can receive focus or that enable text editing.\r\n3. The security requirements permit platform software to programmatically modify focus, text insertion point and selection attributes of user interface elements.', '1. For user interface elements that can receive focus and where the focus can be modified by a user without the use of assistive technology, check that the focus can be programmatically modified by assistive technologies.\r\n2. For user interface elements that enable text editing by a user without the use of assistive technology, check that the position of the text insertion point can be programmatically modified by assistive technologies.\r\n3. For user interface elements that enable text editing, check that the selection attributes can be programmatically modified by assistive technologies where they can be modified by user without the use of assistive technology.', 'Pass: All checks are true\r\nFail: Any check is false'),
(222, '11.3.2.15', 'Inspection and Testing', '1. The software evaluated is software that provides a user interface.', '1. Activate notifications of changes in the user interface elements.\r\n2. Check that notifications about changes in object information (role, state, boundary, name and description) are sent to assistive technologies, if this information changes in the software user interface.\r\n3. Check that notifications about changes in row, column and headers of data tables are sent to assistive technologies, if this information changes in the software.\r\n4. Check that notifications about changes in values (current value, minimum value and maximum value) are sent, if this information changes in the software.\r\n5. Check that notifications about changes in label relationships are sent o assistive technologies, if this information changes in the software.\r\n6. Check that notifications about changes in parent-child relationships are sent to assistive technologies, if this information changes in the software.\r\n7. Check notifications about changes in text (text contents, text attributes and the boundary of text rendered to the screen) are sent to assistive technologies, if this information changes in the software.\r\n8. Check that notifications about changes in the list of available actions are sent to assistive technologies, if this information changes in the software.\r\n9. Check that notifications about changes in focus, text insertion point and selection attributes are sent to assistive technologies, if this information changes in the software.', 'Pass: Checks 2, 3, 4, 5, 6, 7, 8 and 9 are true\r\nFail: Check 2, 3, 4, 5, 6, 7, 8 or 9 is false'),
(223, '11.3.2.16', 'Testing', '1. The software evaluated is software that provides a user interface.\r\n2. There are user interface elements whose state or properties can be modified by a user without the use of assistive technology.\r\n3. The security requirements permit assistive technology to programmatically modify states and properties of user interface elements.', '1. Check that the state of user interface elements, whose state can be modified by a user without the use of assistive technology, can be programmatically modified by assistive technologies.\r\n2. Check the properties of user interface elements, whose properties can be modified by a user without the use of assistive technologies, can be programmatically modified by assistive technologies.', 'Pass: All checks are true\r\nFail: Any check is false'),
(224, '11.3.2.17', 'Testing', '1. The software evaluated is software that provides a user interface.\r\n2. There are user interface elements whose values or text can be modified by a user without the use of assistive technology.\r\n3. The security requirements permit assistive technology to programmatically modify values and text of user interface elements.', '1. Check that the values of user interface elements, whose values can be modified by a user without the use of assistive technology, can be modified by assistive technologies using the input methods of the platform.\r\n2. Check that the text of user interface elements, whose text can be modified by a user without the use of assistive technology, can be modified by assistive technologies using the input methods of the platform.', 'Pass: all checks are true\r\nFail: any check is false'),
(225, '11.4.1', 'Testing', '1. There are platform features that are defined in the platform documentation as accessibility features intended for users.', '1. Check that sufficient modes of operation exists where user control over platform features, that are defined in the platform documentation as accessibility features intended for users, is possible.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(226, '11.4.2', 'Testing', '1. There are platform features that are defined in the platform documentation as accessibility features.', '1. Check if software that provides a user interface disrupts normal operation of platform accessibility features.\r\n2. Check if the disruption was specifically requested or confirmed by the user.', 'Pass: Check 1 is false or both checks are true\r\nFail: Check 1 is true and check 2 is false'),
(227, '11.5', 'Inspection and Testing', '1. The software is software that provides a user interface.', '1. Check if the software provides sufficient modes of operation that uses user preferences for platform settings for colour, contrast, font type, font size, and focus cursor.\r\n2. Check that the software documentation indicates that the software is designed to be isolated from its underlying platform.', 'Pass: Check 1 is true or Check 1 is false and check 2 is true\r\nFail: Check 1 is false and check 2 is false'),
(228, '11.6.1', 'Inspection and Testing', '1. The software is an authoring tool.\r\n2. The output format of the authoring tool supports information required for accessibility.', '1. Check if the authoring tool conforms to 11.6.2 to 11.6.5 to the extent that information required for accessibility is supported by the format used for the output of the authoring tool.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(229, '11.6.2', 'Inspection and Testing', '1. The software is an authoring tool.', '1. Check if the authoring tool has features that enable and guide the production of content that conforms to clauses 9 (Web content) and 10 (Documents).', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(230, '11.6.3', 'Inspection and Testing', '1. The software is an authoring tool.\r\n2. The authoring tool provides restructuring transformations or re-coding transformations.', '1. For a restructuring transformation, check if the accessibility information is preserved in the output.\r\n2. For a restructuring transformation, check if the content technology supports accessibility information for the restructured form of the information.\r\n3. For a re-coding transformation, check if the accessibility information is preserved in the output.\r\n4. For a re-coding transformation, check if the accessibility information is supported by the technology of the re-coded output.', 'Pass: Check 1 is true or checks 1 and 2 are false or check 3 is true or checks 3 and 4 are false\r\nFail: Check 1 is false and check 2 is true'),
(231, '11.6.4', 'Inspection', '1. The software is an authoring tool.\r\n2. The accessibility checking functionality of the authoring tool can detect that content does not meet a requirement of clauses 9 (Web content) or 10 (Documents) as applicable.', '1. The authoring tool provides repair suggestions when content does not meet a requirement of clauses 9 or 10 (as applicable).', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(232, '11.6.5', 'Inspection', '1. The software is an authoring tool.\r\n2. The authoring tool provides templates.', '1. Check that the authoring tool provides at least one template that supports the creation of content that conforms to requirements of clauses 9 (Web content) or 10 (Documents) as applicable.\r\n2. Check that at least one template identified in step 1 is available and is identified as conforming to clauses 9 or 10 (as applicable).', 'Pass: Checks 1 and 2 are true\r\nFail: Check 1 or 2 is false'),
(233, '12.1.1', 'Inspection', '1. Product documentation is supplied with the ICT.', '1. Check that product documentation provided with the ICT lists and explains how to use the accessibility and compatibility features of the ICT.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(234, '12.1.2', 'Inspection', '1. Product documentation in electronic format is supplied with the ICT.', '1. Check that product documentation in electronic format provided with the ICT conforms to the requirements of clauses 9 or 10 as appropriate.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(235, '12.2.2', 'Inspection', '1. ICT support services are provided.', '1. Check that the ICT support services provide information on the accessibility and compatibility features that are included in the product documentation.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(236, '12.2.3', 'Inspection', '1. ICT support services are provided.', '1. Check that the ICT support services accommodate the communication needs of individuals with disabilities either directly or through a referral point.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(237, '12.2.4', 'Inspection', '1. Documentation is provided by the ICT support services.', '1. Check that documentation in electronic format provided by the ICT support services conforms to the requirements of clauses 9 or 10 as appropriate.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(238, '13.1.2', 'Inspection', '1. The service is a text relay service.', '1. Check that the service enables text users and speech users to interact by providing conversion between the two modes of communication.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(239, '13.1.3', 'Inspection', '1. The service is a sign relay service.', '1. Check that the service enables sign language users and speech users to interact by providing conversion between the two modes of communication.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(240, '13.1.4', 'Inspection', '1. The service is a sign relay service.', '1. Check that the service enables lip-readers and voice telephone users to interact by providing conversion between the two modes of communication.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(241, '13.1.5', 'Inspection', '1. The service is a captioned telephony service.', '1. Check that the service assists a deaf or hard of hearing user in a spoken dialogue by providing text captions translating the incoming part of the conversation.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(242, '13.1.6', 'Inspection', '1. The service is a captioned telephony service.', '1. Check that the service enables enable speech or cognitively impaired telephone users and any other user to communicate by providing assistance between them.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(243, '13.2', 'Inspection', '1. The ICT system supports two-way communication.\r\n2. A set of relay services for two-way communication is specified.', '1. Check that the system does not prevent access to those relay services for incoming and outgoing calls.', 'Pass: Check 1 is true\r\nFail: Check 1 is false'),
(244, '13.3', 'Inspection', '1. The ICT system supports two-way communication.\r\n2. A set of emergency services for two-way communication is specified.', '1. Check that the system does not prevent access to those emergency services for outgoing and incoming calls.', 'Pass: Check 1 is true\r\nFail: Check 1 is false');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluation`
--

CREATE TABLE IF NOT EXISTS `evaluation` (
  `id` int(11) NOT NULL,
  `idProj` int(11) NOT NULL,
  `idClause` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `answer` enum('Not Evaluated','Fail','Pass','Not Applicable') COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `evaluation`
--

INSERT INTO `evaluation` (`id`, `idProj`, `idClause`, `answer`) VALUES
(1, 61, '05.2', 'Not Evaluated'),
(2, 61, '05.3', 'Not Evaluated'),
(3, 61, '05.4', 'Not Evaluated'),
(4, 61, '05.7', 'Not Evaluated'),
(5, 61, '05.8', 'Not Evaluated'),
(6, 61, '05.9', 'Not Evaluated');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluatorofproject`
--

CREATE TABLE IF NOT EXISTS `evaluatorofproject` (
  `id` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idProj` int(11) NOT NULL,
  `situation` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `evaluatorofproject`
--

INSERT INTO `evaluatorofproject` (`id`, `idUser`, `idProj`, `situation`) VALUES
(4, 192, 44, 0),
(5, 192, 61, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `initialclauses`
--

CREATE TABLE IF NOT EXISTS `initialclauses` (
  `id` varchar(15) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `initialclauses`
--

INSERT INTO `initialclauses` (`id`) VALUES
('05.2'),
('05.3'),
('05.4'),
('05.7'),
('05.8'),
('05.9');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noteofclause`
--

CREATE TABLE IF NOT EXISTS `noteofclause` (
  `idNote` int(11) NOT NULL,
  `idClause` varchar(15) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `text` varchar(1000) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `noteofclause`
--

INSERT INTO `noteofclause` (`idNote`, `idClause`, `text`) VALUES
(1, '05.1.2.1', 'NOTE 1: ICT may close some, but not all, of its functionalities. Only the closed functionalities have to conform to the requirements of clause 5.1.'),
(2, '05.1.2.1', 'NOTE 2: The provisions within this clause are requirements for the closed functionality of ICT that replace those requirements in clauses 5.2 to 13 that specifically state that they do not apply to closed functionality. This may be because they relate to compatibility with assistive technology or to the ability for the user to adjust system accessibility settings in products with closed functionality (e.g. products that prevent access to the system settings control panel).'),
(3, '05.1.3.01', 'NOTE 1: Non-visual access may be in an audio form, including speech, or a tactile form.'),
(4, '05.1.3.01', 'NOTE 2: The visual information needed to enable use of some functions may include operating instructions and orientation, transaction prompts, user input verification, error messages and non-text content.'),
(5, '05.1.3.02', 'NOTE 1: Mechanisms included in or provided with ICT may be, but are not limited to, a loudspeaker, a built-in handset/headset, or other industry standard coupled peripheral.'),
(6, '05.1.3.02', 'NOTE 2: An industry standard connection could be a wireless connection.'),
(7, '05.1.3.02', 'NOTE 3: Some users may benefit from the provision of an inductive loop.'),
(8, '05.1.3.03', 'NOTE 1: Many people who are legally blind still have visual ability, and use aspects of the visual display even if it cannot be fully comprehended. An audio alternative that is both complete and complementary includes all visual information such as focus or highlighting, so that the audio can be correlated with information that is visible on the screen at any point in time.'),
(9, '05.1.3.03', 'NOTE 2: Examples of auditory information that allows the user to correlate the audio with the information displayed on the screen include structure and relationships conveyed through presentation.'),
(10, '05.1.3.04', 'NOTE 1: It is best practice to allow the user to pause speech output rather than just allowing them to interrupt it.'),
(11, '05.1.3.04', 'NOTE 2: It is best practice to allow the user to repeat only the most recent portion rather than requiring play to start from the beginning.'),
(12, '05.1.3.05', 'NOTE: Where it is essential that the user hears the entire message, e.g. a safety instruction or warning, the ICT may need to block all user action so that speech is not interrupted.'),
(14, '05.1.3.07', 'NOTE: This speech output can take the form of an audio description or an auditory transcript of the video content.'),
(15, '05.1.3.08', 'NOTE 1: Masking characters are usually displayed for security purposes and include, but are not limited to asterisks representing personal identification numbers.'),
(16, '05.1.3.08', 'NOTE 2: Unmasked character output might be preferred when closed functionality is used, for example, in the privacy of the user''s home. A warning highlighting privacy concerns might be appropriate to ensure that the user has made an informed choice.'),
(17, '05.1.3.09', 'NOTE 1: This requirement does not apply in cases where data is not defined as being private according to the applicable privacy policy or where there is no applicable privacy policy.'),
(18, '05.1.3.09', 'NOTE 2: Non-private output might be preferred when closed functionality is used, for example, in the privacy of the user''s home. A warning highlighting privacy concerns might be appropriate to ensure that the user has made an informed choice.'),
(21, '05.1.3.12', 'NOTE: For noisy environments, 65dBA may not be sufficient.'),
(22, '05.1.3.13', 'NOTE: A feature to disable the volume reset function may be provided in order to enable the single-user exception to be met.'),
(25, '05.1.3.16', 'NOTE: The speech output may be provided by any element of the total ICT system.'),
(26, '05.1.4', 'NOTE: The intent is to provide a mode of operation where text is large enough to be used by most users with low vision.'),
(27, '05.1.5', 'NOTE: This visual information can take the form of captions or text transcripts.'),
(31, '05.3', 'NOTE 1: Alternative means of user identification or for control of ICT could be non-biometric or biometric.'),
(32, '05.3', 'NOTE 2: Biometric methods based on dissimilar biological characteristics increase the likelihood that individuals with disabilities possess at least one of the specified biological characteristics. Examples of dissimilar biological characteristics are fingerprints, eye retinal patterns, voice, and face.'),
(35, '05.5.2', 'NOTE: One way of meeting this requirement is by making the operable parts tactilely discernible.'),
(36, '05.6.1', 'NOTE 1: Locking or toggle controls are those controls that can only have two or three states and that keep their state while being used.'),
(37, '05.6.1', 'NOTE 2: An example of a locking or toggle control is the "Caps Lock" key found on most keyboards. Another example is the volume button on a pay telephone, which can be set at normal, loud, or extra loud volume.'),
(38, '05.6.2', 'NOTE 1: Locking or toggle controls are those controls that can only have two or three states and that keep their state while being used.'),
(39, '05.6.2', 'NOTE 2: An example of a locking or toggle control is the "Caps Lock" key found on most keyboards. An example of making the status of a control determinable is a visual status indicator on a keyboard.'),
(42, '05.9', 'NOTE: Having to use both hands to open the lid of a laptop, having to press two or more keys at the same time or having to touch a surface with more than one finger are examples of simultaneous user actions.'),
(43, '06.1', 'NOTE 1: For the purposes of interoperability, support of Recommendation ITU-T G.722 [i.21] is widely used.'),
(44, '06.1', 'NOTE 2: Where codec negotiation is implemented, other standardized codecs such as Recommendation ITU-T G.722.2 [i.22] are sometimes used so as to avoid transcoding.'),
(45, '06.2.1.1', 'NOTE 1: The RTT capability can be provided as a factory default or added later.'),
(46, '06.2.1.1', 'NOTE 2: Provision of RTT may require additional service provision, additional hardware and/or software which may be provided separately or together.'),
(47, '06.2.1.2', 'NOTE: The availability of voice and RTT running concurrently can allow the RTT to replace or support voice and transfer additional information such as numbers, currency amounts and spelling of names.'),
(49, '06.2.2.2', 'NOTE: The intent of clause 6.2.2.2 is to enable screen readers to be able to distinguish between incoming text and outgoing text when used with RTT functionality.'),
(51, '06.2.4', 'NOTE 1: Input entry is considered to have occurred when sufficient user input has occurred for the ICT to establish which character(s) to send.'),
(52, '06.2.4', 'NOTE 2: Input entry will differ between systems where text is entered on a word-by-word basis (e.g. speech-to-text and predictive-text based systems) and systems where each character is separately generated.'),
(54, '06.4', 'NOTE: Solutions capable of handling audio, real-time text and video media could satisfy the above requirement.'),
(58, '06.6', 'NOTE: Solutions capable of generating real-time captions or handling real-time text could satisfy the above requirement.'),
(59, '07.1.1', 'NOTE: Captions may contain information about timing, colour and positioning. This caption data is important for caption users. Timing is used for caption synchronization. Colour can be used for speaker identification. Position can be used to avoid obscuring important information.'),
(62, '07.2.1', 'NOTE 1: In such cases, the video content can include the audio description as one of the available audio tracks.'),
(63, '07.2.1', 'NOTE 2: Audio descriptions in digital media sometimes include information to allow descriptions that are longer than the gaps between dialogue. Support in digital media players for this "extended audio description" feature is useful, especially for digital media that is viewed personally.'),
(66, '07.3', 'NOTE 1: Primary media controls are the set of controls that the user most commonly uses to control media.'),
(67, '07.3', 'NOTE 2: Products that have a general hardware volume control, such as a telephone, or a laptop which can be configured to display video through software but which is not its primary purpose, would not need dedicated hardware controls for captions and descriptions; however software controls, or hardware controls mapped through software, would need to be at the same level of interaction.'),
(68, '07.3', 'NOTE 3: It is best practice for ICT to include additional controls enabling the user to select whether captions and audio description are turned on or off by default.'),
(69, '08.1.2', 'NOTE 1: The intent of this requirement is to ensure compatibility with assistive technologies by requiring the use of standard connections on ICT.'),
(70, '08.1.2', 'NOTE 2: The word connection applies to both physical and wireless connections.'),
(71, '08.1.2', 'NOTE 3: Current examples of industry standard non-proprietary formats are USB and Bluetooth.'),
(73, '08.2.1.1', 'NOTE: Fixed-line handsets and headsets fulfilling the requirements of ANSI/TIA-4965 [i.2] are deemed to comply with this requirement.'),
(75, '08.2.2.1', 'NOTE: ICT fulfilling the requirements of TIA-1083-A [i.24] is deemed to comply with the requirements of this clause.'),
(76, '08.2.2.2', 'NOTE: ICT fulfilling the requirements of ANSI/IEEE C63.19 [i.1] is deemed to comply with the requirements of this clause.'),
(77, '08.3.4', 'NOTE: The intent of this provision is that the information on the screen can be read by users with normal vision and appropriate language skills, when seated in a wheelchair.'),
(78, '08.4.1', 'NOTE: Recommendation ITU-T E.161 [i.20] describes the 12-key telephone keypad layout and provides further details of the form of tactile markers.'),
(79, '08.4.3', 'NOTE: ETSI ETS 300 767 [i.6] defines suitable tactile indications for plastic cards.'),
(80, '08.5', 'NOTE: The tactile indication could include Braille instructions.'),
(81, '09.3', 'NOTE 1: A Web page that meets all of requirements 9.2.1 to 9.2.38, or where a Level AA conforming alternate version (as defined in WCAG 2.0 [4]) is provided, will meet conformance requirement 1.'),
(82, '09.3', 'NOTE 2: Conformance requirement 5 states that all content on the page, including content that is not otherwise relied upon to meet conformance, meets clauses 9.2.11, 9.2.16, 9.2.18 and 9.2.19.'),
(83, '10.2.01', 'NOTE 1: CAPTCHAs do not currently appear outside of the Web. However, if they do appear, this guidance is accurate.'),
(84, '10.2.01', 'NOTE 2: This success criterion is identical to the WCAG 2.0 Success Criterion 1.1.1 Non-text content with the words "WCAG 2.0" added before each occurrence of the word "guideline" and with the addition of note 1 above.'),
(85, '10.2.02', 'NOTE 1: The alternative can be provided directly in the document - or provided in an alternate version that meets the success criterion.'),
(86, '10.2.02', 'NOTE 2: This success criterion is identical to the WCAG 2.0 Success Criterion 1.2.1 Audio-only and Video-only (Pre-recorded) with the addition of note 1 above.'),
(87, '10.2.03', 'NOTE 1: The WCAG 2.0 definition of "captions" notes that "in some countries, captions are called subtitles". They are also sometimes referred to as "subtitles for the hearing impaired". Per the definition in WCAG 2.0, to meet this success criterion, whether called captions or subtitles, they would have to provide "synchronized visual and / or text alternative for both speech and non-speech audio information needed to understand the media content" where non-speech information includes "sound effects, music, laughter, speaker identification and location".'),
(88, '10.2.03', 'NOTE 2: This success criterion is identical to the WCAG 2.0 Success Criterion 1.2.2 Captions (Pre-recorded) with the addition of note 1 above.'),
(89, '10.2.04', 'NOTE 1: The WCAG 2.0 definition of "audio description" says that "audio description" is "Also called ''video description'' and ''descriptive narration''".'),
(90, '10.2.04', 'NOTE 2: Secondary or alternate audio tracks are commonly used for this purpose.'),
(91, '10.2.04', 'NOTE 3: This success criterion is identical to the WCAG 2.0 Success Criterion 1.2.3 Audio Description or Media Alternative (Pre-recorded) with the addition of notes 1 and 2 above.'),
(92, '10.2.05', 'NOTE 1: The WCAG 2.0 definition of "captions" notes that "in some countries, captions are called subtitles". They are also sometimes referred to as "subtitles for the hearing impaired". Per the definition in WCAG 2.0, to meet this success criterion, whether called captions or subtitles, they would have to provide "synchronized visual and / or text alternative for both speech and non-speech audio information needed to understand the media content" where non-speech information includes "sound effects, music, laughter, speaker identification and location".'),
(93, '10.2.05', 'NOTE 2: This success criterion is identical to the WCAG 2.0 Success Criterion 1.2.4 Captions (Live) with the addition of note 1 above.'),
(94, '10.2.06', 'NOTE 1: The WCAG 2.0 definition of "audio description" says that audio description is "Also called ''video description'' and ''descriptive narration''".'),
(95, '10.2.06', 'NOTE 2: Secondary or alternate audio tracks are commonly used for this purpose.'),
(96, '10.2.06', 'NOTE 3: This success criterion is identical to the WCAG 2.0 Success Criterion 1.2.5 Audio Description (Pre-recorded) (Level AA) with the addition of note 1 above.'),
(97, '10.2.07', 'NOTE: This success criterion is identical to the WCAG 2.0 Success Criterion 1.3.1 Info and Relationships.'),
(98, '10.2.08', 'NOTE: This success criterion is identical to the WCAG 2.0 Success Criterion 1.3.2 Meaningful Sequence.'),
(99, '10.2.09', 'NOTE 1: For requirements related to colour, refer to WCAG 2.0 Guideline 1.4 [4].'),
(100, '10.2.09', 'NOTE 2: This success criterion is identical to the WCAG 2.0 Success Criterion 1.3.3 Sensory Characteristics with the words "WCAG 2.0" added before the word "Guideline" in note 1 above.'),
(101, '10.2.10', 'NOTE 1: This success criterion addresses colour perception specifically. Other forms of perception are covered in WCAG 2.0 Guideline 1.3 [4] including programmatic access to colour and other visual presentation coding.'),
(102, '10.2.10', 'NOTE 2: This success criterion is identical to the WCAG 2.0 Success Criterion 1.4.1 Use of Color with the words "WCAG 2.0" added before the word "Guideline" in note 1 above.'),
(103, '10.2.11', 'NOTE 1: Since any part of a document that does not meet this success criterion can interfere with a user''s ability to use the whole document, all content in the document (whether or not it is used to meet other success criteria) shall meet this success criterion.'),
(104, '10.2.11', 'NOTE 2: This success criterion is identical to the WCAG 2.0 Success Criterion 1.4.2 Audio Control replacing "on a Web page" with "in a document", "any content" with "any part of a document", "whole page" with "whole document", "on the Web page" with "in the document", removing "See Conformance Requirement 5: Non-Interference" and adding note 1.'),
(105, '10.2.12', 'NOTE: This success criterion is identical to the WCAG 2.0 Success Criterion 1.4.3 Contrast (Minimum).'),
(106, '10.2.13', 'NOTE 1: Content for which there are software players, viewers or editors with a 200 percent zoom feature would automatically meet this success criterion when used with such players, unless the content will not work with zoom.'),
(107, '10.2.13', 'NOTE 2: This success criterion is about the ability to allow users to enlarge the text on screen at least up to 200 % without needing to use assistive technologies. This means that the application provides some means for enlarging the text 200 % (zoom or otherwise) without loss of content or functionality or that the application works with the platform features that meet this requirement.'),
(108, '10.2.13', 'NOTE 3: This success criterion is identical to the WCAG 2.0 Success Criterion 1.4.4 Resize text with the addition of notes 1 and 2 above.'),
(109, '10.2.14', 'NOTE 1: Logotypes (text that is part of a logo or brand name) are considered essential.'),
(110, '10.2.14', 'NOTE 2: This success criterion is identical to the WCAG 2.0 Success Criterion 1.4.5 Images of Text.'),
(111, '10.2.15', 'NOTE 1: This exception relates to the underlying function, not the input technique. For example, if using handwriting to enter text, the input technique (handwriting) requires path-dependent input but the underlying function (text input) does not.'),
(112, '10.2.15', 'NOTE 2: This does not forbid and should not discourage providing mouse input or other input methods in addition to keyboard operation.'),
(113, '10.2.15', 'NOTE 3: This success criterion is identical to the WCAG 2.0 Success Criterion 2.1.1 Keyboard.'),
(114, '10.2.16', 'NOTE 1: Since any part of a document that does not meet this success criterion can interfere with a user''s ability to use the whole document, all content in the document (whether or not it is used to meet other success criteria) must meet this success criterion.'),
(115, '10.2.16', 'NOTE 2: Standard exit methods may vary by platform. For example, on many desktop platforms, the Escape key is a standard method for exiting.'),
(116, '10.2.16', 'NOTE 3: This success criterion is identical to the WCAG 2.0 Success Criterion 2.1.2 No Keyboard Trap replacing "page" and "Web page" with "document", removing "See Conformance Requirement 5: Non-Interference" and with the addition of note 2 above.'),
(117, '10.2.17', 'NOTE 1: This success criterion helps ensure that users can complete tasks without unexpected changes in content or context that are a result of a time limit. This success criterion should be considered in conjunction with WCAG 2.0 Success Criterion 3.2.1, which puts limits on changes of content or context as a result of user action.'),
(118, '10.2.17', 'NOTE 2: This success criterion is identical to the WCAG 2.0 Success Criterion 2.2.1 Timing Adjustable replacing "the content" with "documents" and with the words "WCAG 2.0" added before the word "Success Criterion" in note 1 above.'),
(119, '10.2.18', 'NOTE 1: For requirements related to flickering or flashing content, refer to WCAG 2.0 Guideline 2.3.'),
(120, '10.2.18', 'NOTE 2: This success criteria is applicable to all content in the document (whether or not there is an alternate accessible version of the document) since any part of a document that does not meet this success criterion can interfere with a user''s ability to use the whole document (including a link to the alternate version).'),
(121, '10.2.18', 'NOTE 3: Content that is updated periodically by software or that is streamed to the user agent is not required to preserve or present information that is generated or received between the initiation of the pause and resuming presentation, as this may not be technically possible, and in many situations could be misleading to do so.'),
(122, '10.2.18', 'NOTE 4: An animation that occurs as part of a preload phase or similar situation can be considered essential if interaction cannot occur during that phase for all users and if not indicating progress could confuse users or cause them to think that content was frozen or broken.'),
(123, '10.2.18', 'NOTE 5: This is to be applied to all content. Any content, whether informative or decorative, that is updated automatically, blinks, or moves may create an accessibility barrier.'),
(124, '10.2.18', 'NOTE 6: This success criterion is identical to the WCAG 2.0 Success Criterion 2.2.2 Pause, Stop, Hide replacing "page" and "Web page" with "document", removing "See Conformance Requirement 5: Non-Interference" in note 2 of the success criterion, with the words "WCAG 2.0" added before the word "Guideline" in note 1 above and with note 2 above re-drafted to avoid the use of the word "must".'),
(125, '10.2.19', 'NOTE 1: This success criterion is applicable to all content in the document (whether or not there is an alternate accessible version of the document) since any part of a document that does not meet this success criterion can interfere with a user''s ability to use the whole document (including a link to the alternate version).'),
(126, '10.2.19', 'NOTE 2: This success criterion is identical to the WCAG 2.0 Success Criterion 2.3.1 Three Flashes or Below Threshold replacing "Web pages" with "documents", "the whole page" with "the whole document", "the Web page" with "the document" and removing "See Conformance Requirement 5: Non-Interference" and with note 1 above re-drafted to avoid the use of the word "must".'),
(127, '10.2.21', 'NOTE 1: The name of a document (e.g. document, media file) is a sufficient title if it describes the topic or purpose.'),
(128, '10.2.21', 'NOTE 2: This success criterion is identical to the WCAG 2.0 Success Criterion 2.4.2 Page Titled replacing "Web pages" with "documents", "Page" with "Document" and with the addition of note 1 above.'),
(129, '10.2.22', 'NOTE: This success criterion is identical to the WCAG 2.0 Success Criterion 2.4.3 Focus Order replacing "Web page" with "document".'),
(130, '10.2.23', 'NOTE: This success criterion is identical to the WCAG 2.0 Success Criterion 2.4.4 Link Purpose (In Context).'),
(131, '10.2.25', 'NOTE: This success criterion is identical to the WCAG 2.0 Success Criterion 2.4.6 Headings and Labels.'),
(132, '10.2.26', 'NOTE: This success criterion is identical to the WCAG 2.0 Success Criterion 2.4.7 Focus Visible.'),
(133, '10.2.27', 'NOTE: This success criterion is identical to the WCAG 2.0 Success Criterion 3.1.1 Language of Page replacing "web page" with "document".'),
(134, '10.2.28', 'NOTE 1: There are some document technologies where there is no assistive technology supported method for marking the language for the different passages or phrases in the document, and it would not be possible to meet this success criterion with those technologies.'),
(135, '10.2.28', 'NOTE 2: Inheritance is one common method. For example a document provides the language that it is using and it can be assumed that all of the text or user interface elements within that document will be using the same language unless it is indicated.'),
(136, '10.2.28', 'NOTE 3: This success criterion is identical to the WCAG 2.0 Success Criterion 3.1.2 Language of Parts replacing "content" with "document" and with the addition of notes 1 and 2 above.'),
(137, '10.2.29', 'NOTE 1: Some compound documents and their user agents are designed to provide significantly different viewing and editing functionality depending upon what portion of the compound document is being interacted with (e.g. a presentation that contains an embedded spreadsheet, where the menus and toolbars of the user agent change depending upon whether the user is interacting with the presentation content, or the embedded spreadsheet content). If the user uses a mechanism other than putting focus on that portion of the compound document with which they mean to interact (e.g. by a menu choice or special keyboard gesture), any resulting change of context would not be subject to this success criterion because it was not caused by a change of focus.'),
(138, '10.2.29', 'NOTE 2: This success criterion is identical to the WCAG 2.0 Success Criterion 3.2.1 On Focus with the addition of note 1.'),
(139, '10.2.30', 'NOTE: This success criterion is identical to the WCAG 2.0 Success Criterion 3.2.2 On Input.'),
(140, '10.2.33', 'NOTE: This success criterion is identical to the WCAG 2.0 Success Criterion 3.3.1 Error Identification.'),
(141, '10.2.34', 'NOTE: This success criterion is identical to the WCAG 2.0 Success Criterion 3.3.2 Labels or Instructions.'),
(142, '10.2.35', 'NOTE: This success criterion is identical to the WCAG 2.0 Success Criterion 3.3.3 Error Suggestion.'),
(143, '10.2.36', 'NOTE: This success criterion is identical to the WCAG 2.0 Success Criterion 3.3.4 Error Prevention (Legal, Financial, Data) replacing "web pages" with "documents".'),
(144, '10.2.37', 'NOTE 1: Start and end tags that are missing a critical character in their formation, such as a closing angle bracket or a mismatched attribute value quotation mark are not complete.'),
(145, '10.2.37', 'NOTE 2: Markup is not always available to assistive technology or to user selectable user agents such as browsers. In such cases, conformance to this provision would have no impact on accessibility as it can for web content where it is exposed.'),
(146, '10.2.37', 'NOTE 3: Examples of markup that is separately exposed and available to assistive technologies and to user agents include but are not limited to: documents encoded in HTML, ODF, and OOXML. In these examples, the markup can be parsed entirely in two ways: (a) by assistive technologies which may directly open the document, (b) by assistive technologies using DOM APIs of user agents for these document formats.'),
(147, '10.2.37', 'NOTE 4: This success criterion is identical to the WCAG 2.0 Success Criterion 4.1.1 Parsing replacing "In content implemented using markup languages" with "For documents that use markup languages, in such a way that the markup is separately exposed and available to assistive technologies and accessibility features of software or to a user-selectable user agent" with the addition of notes 2 and 3 above.'),
(148, '10.2.38', 'NOTE 1: This success criterion is primarily for software developers who develop or use custom user interface components. Standard user interface components on most accessibility-supported platforms already meet this success criterion when used according to specification.'),
(149, '10.2.38', 'NOTE 2: For document formats that support interoperability with assistive technology, standard user interface components often meet this success criterion when used according to the general design and accessibility guidance for the document format.'),
(150, '10.2.38', 'NOTE 3: This success criterion is identical to the WCAG 2.0 Success Criterion 4.1.2 Name, Role, Value replacing the original WCAG 2.0 note with: "This success criterion is primarily for software developers who develop or use custom user interface components. For example, standard user interface components on most accessibility-supported platforms already meet this success criterion when used according to specification." and with the addition of note 2 above.'),
(151, '11.2.1.01', 'NOTE 1: CAPTCHAs do not currently appear outside of the Web. However, if they do appear, this guidance is accurate.'),
(152, '11.2.1.01', 'NOTE 2: This success criterion is identical to the WCAG 2.0 Success Criterion 1.1.1 Non-text content with the words "WCAG 2.0" added before each occurrence of the word "guideline" and with the addition of note 1 above.'),
(153, '11.2.1.02', 'NOTE 1: The alternative can be provided directly in the software - or provided in an alternate version that meets the success criterion.'),
(154, '11.2.1.02', 'NOTE 2: This success criterion is identical to the WCAG 2.0 Success Criterion 1.2.1 Audio-only and Video-only (Pre-recorded) with the addition of note 1 above.'),
(155, '11.2.1.03', 'NOTE 1: The WCAG 2.0 definition of "captions" notes that "in some countries, captions are called subtitles". They are also sometimes referred to as "subtitles for the hearing impaired". Per the definition in WCAG 2.0, to meet this success criterion, whether called captions or subtitles, they would have to provide "synchronized visual and / or text alternative for both speech and non-speech audio information needed to understand the media content" where non-speech information includes "sound effects, music, laughter, speaker identification and location".'),
(156, '11.2.1.03', 'NOTE 2: This success criterion is identical to the WCAG 2.0 Success Criterion 1.2.2 Captions (Pre-recorded) with the addition of note 1 above.'),
(157, '11.2.1.04', 'NOTE 1: The WCAG 2.0 definition of "audio description" says that "audio description" is "also called ''video description'' and ''descriptive narration''".'),
(158, '11.2.1.04', 'NOTE 2: Secondary or alternate audio tracks are commonly used for this purpose.'),
(159, '11.2.1.04', 'NOTE 3: This success criterion is identical to the WCAG 2.0 Success Criterion 1.2.3 Audio Description or Media Alternative (Pre-recorded) with the addition of notes 1 and 2 above.'),
(160, '11.2.1.05', 'NOTE 1: The WCAG 2.0 definition of "captions" notes that "in some countries, captions are called subtitles". They are also sometimes referred to as "subtitles for the hearing impaired". Per the definition in WCAG 2.0, to meet this success criterion, whether called captions or subtitles, they would have to provide "synchronized visual and / or text alternative for both speech and non-speech audio information needed to understand the media content" where non-speech information includes "sound effects, music, laughter, speaker identification and location".'),
(161, '11.2.1.05', 'NOTE 2: This success criterion is identical to the WCAG 2.0 Success Criterion 1.2.4 Captions (Live) with the addition of note 1 above.'),
(162, '11.2.1.06', 'NOTE 1: The WCAG 2.0 definition of "audio description" says that audio description is "Also called ''video description'' and ''descriptive narration''".'),
(163, '11.2.1.06', 'NOTE 2: Secondary or alternate audio tracks are commonly used for this purpose.'),
(164, '11.2.1.06', 'NOTE 3: This success criterion is identical to the WCAG 2.0 Success Criterion 1.2.5 Audio Description (Pre-recorded) with the addition of note 1 above.'),
(165, '11.2.1.07', 'NOTE 1: In software, programmatic determinability is best achieved through the use of accessibility services provided by platform software to enable interoperability between software and assistive technologies and accessibility features of software. (see clause 11.3 Interoperability with assistive technology).'),
(166, '11.2.1.07', 'NOTE 2: This success criterion is identical to the WCAG 2.0 Success Criterion 1.3.1 Info and Relationships with the addition of note 1 above.'),
(167, '11.2.1.08', 'NOTE: This success criterion is identical to the WCAG 2.0 Success Criterion 1.3.2 Meaningful Sequence.'),
(168, '11.2.1.09', 'NOTE 1: For requirements related to colour, refer to WCAG 2.0 Guideline 1.4 [4].'),
(169, '11.2.1.09', 'NOTE 2: This success criterion is identical to the WCAG 2.0 Success Criterion 1.3.3 Sensory Characteristics with the words "WCAG 2.0" added before the word "Guideline" in note 1 above.'),
(170, '11.2.1.10', 'NOTE 1: This success criterion addresses colour perception specifically. Other forms of perception are covered in WCAG 2.0 Guideline 1.3 [4] including programmatic access to colour and other visual presentation coding.'),
(171, '11.2.1.10', 'NOTE 2: This success criterion is identical to the WCAG 2.0 Success Criterion 1.4.1 Use of Color with the words "WCAG 2.0" added before the word "Guideline" in note 1 above.'),
(172, '11.2.1.11', 'NOTE 1: Since any part of a software that does not meet this success criterion can interfere with a user''s ability to use the whole software, all content in the software (whether or not it is used to meet other success criteria) shall meet this success criterion.'),
(173, '11.2.1.11', 'NOTE 2: This success criterion is identical to the WCAG 2.0 Success Criterion 1.4.2 Audio Control replacing "on a Web page" with "in a software", "any content" with "any part of a software", "whole page" with "whole software", "on the Web page" with "in the software", removing "See Conformance Requirement 5: Non-Interference" and adding note 1.'),
(174, '11.2.1.12', 'NOTE: This success criterion is identical to the WCAG 2.0 Success Criterion 1.4.3 Contrast (Minimum).'),
(175, '11.2.1.13', 'NOTE 1: Content for which there are software players, viewers or editors with a 200 percent zoom feature would automatically meet this success criterion when used with such players, unless the content will not work with zoom.'),
(176, '11.2.1.13', 'NOTE 2: This success criterion is about the ability to allow users to enlarge the text on screen at least up to 200 % without needing to use assistive technologies. This means that the application provides some means for enlarging the text 200 % (zoom or otherwise) without loss of content or functionality or that the application works with the platform features that meet this requirement.'),
(177, '11.2.1.13', 'NOTE 3: This success criterion is identical to the WCAG 2.0 Success Criterion 1.4.4 Resize text with the addition of notes 1 and 2 above.'),
(178, '11.2.1.14', 'NOTE 1: Logotypes (text that is part of a logo or brand name) are considered essential.'),
(179, '11.2.1.14', 'NOTE 2: This success criterion is identical to the WCAG 2.0 Success Criterion 1.4.5 Images of Text.'),
(180, '11.2.1.15', 'NOTE 1: This exception relates to the underlying function, not the input technique. For example, if using handwriting to enter text, the input technique (handwriting) requires path-dependent input but the underlying function (text input) does not.'),
(181, '11.2.1.15', 'NOTE 2: This does not forbid and should not discourage providing mouse input or other input methods in addition to keyboard operation.'),
(182, '11.2.1.15', 'NOTE 3: This does not imply that software is required to directly support a keyboard or "keyboard interface". Nor does it imply that software is required to provide a soft keyboard. Underlying platform software may provide device independent input services to applications that enable operation via a keyboard. Software that supports operation via such platform device independent services would be operable by a keyboard and would comply.'),
(183, '11.2.1.15', 'NOTE 4: This success criterion is identical to the WCAG 2.0 Success Criterion 2.1.1 Keyboard with the addition of note 3 above.'),
(184, '11.2.1.16', 'NOTE 1: Since any part of a software that does not meet this success criterion can interfere with a user''s ability to use the whole software, all content in the software (whether or not it is used to meet other success criteria) shall meet this success criterion.'),
(185, '11.2.1.16', 'NOTE 2: Standard exit methods may vary by platform. For example, on many desktop platforms, the Escape key is a standard method for exiting.'),
(186, '11.2.1.16', 'NOTE 3: This success criterion is identical to the WCAG 2.0 Success Criterion 2.1.2 No Keyboard Trap replacing "content", "page" and "Web page" with "software", removing "See Conformance Requirement 5: Non-Interference" and with the addition of note 2 above.'),
(187, '11.2.1.17', 'NOTE 1: This success criterion helps ensure that users can complete tasks without unexpected changes in content or context that are a result of a time limit. This success criterion should be considered in conjunction with clause 11.2.1.29 (On focus), which puts limits on changes of content or context as a result of user action.'),
(188, '11.2.1.17', 'NOTE 2: This success criterion is identical to the WCAG 2.0 Success Criterion 2.2.1 Timing Adjustable replacing "the content" with "software".'),
(189, '11.2.1.18', 'NOTE 1: For requirements related to flickering or flashing content, refer to WCAG 2.0 Guideline 2.3.'),
(190, '11.2.1.18', 'NOTE 2: This success criteria is applicable to all content in the software (whether or not there is an alternate accessible mode of operation of the software) since any part of a software that does not meet this success criterion can interfere with a user''s ability to use the whole software (including a user interface element that enables the user to activate the alternate accessible mode of operation).'),
(191, '11.2.1.18', 'NOTE 3: Content that is updated periodically by software or that is streamed to the user agent is not required to preserve or present information that is generated or received between the initiation of the pause and resuming presentation, as this may not be technically possible, and in many situations could be misleading to do so.'),
(192, '11.2.1.18', 'NOTE 4: An animation that occurs as part of a preload phase or similar situation can be considered essential if interaction cannot occur during that phase for all users and if not indicating progress could confuse users or cause them to think that content was frozen or broken.'),
(193, '11.2.1.18', 'NOTE 5: This is to be applied to all content. Any content, whether informative or decorative, that is updated automatically, blinks, or moves may create an accessibility barrier.'),
(194, '11.2.1.18', 'NOTE 6: This success criterion is identical to the WCAG 2.0 Success Criterion 2.2.2 Pause, Stop, Hide replacing "page" and "Web page" with "software", removing "See Conformance Requirement 5: Non-Interference" in note 2 of the success criterion, with the words "WCAG 2.0" added before the word "Guideline" in note 1 above, with note 2 above re-drafted to avoid the use of the word "must" and with the addition of note 5 above.'),
(195, '11.2.1.19', 'NOTE 1: This success criteria is applicable to all content in the software (whether or not there is an alternate accessible mode of operation of the software) since any part of a software that does not meet this success criterion can interfere with a user''s ability to use the whole software (including a user interface element that enables the user to activate the alternate accessible mode of operation).'),
(196, '11.2.1.19', 'NOTE 2: This success criterion is identical to the WCAG 2.0 Success Criterion 2.3.1 Three Flashes or Below Threshold replacing "Web pages" with "software", "the whole page" with "the whole software", "the Web page" with "the software" and removing "See Conformance Requirement 5: Non-Interference" and with note 1 above re-drafted to avoid the use of the word "must".'),
(197, '11.2.1.22', 'NOTE: This success criterion is identical to the WCAG 2.0 Success Criterion 2.4.3 Focus order replacing "Web page" with "software".'),
(198, '11.2.1.23', 'NOTE 1: In software, a "link" is any text string or image in the user interface outside a user interface control that behaves like a hypertext link. This does not include general user interface controls or buttons. (An OK button, for example, would not be a link.)'),
(199, '11.2.1.23', 'NOTE 2: This success criterion is identical to the WCAG 2.0 Success Criterion 2.4.4 Link purpose (in context), replacing both "web page" and "page" with "software" and with the addition of note 1 above.'),
(200, '11.2.1.25', 'NOTE 1: In software, headings and labels are used to describe sections of content and controls respectively. In some cases it may be unclear whether a piece of static text is a heading or a label. But whether treated as a label or a heading, the requirement is the same: that if they are present they describe the topic or purpose of the item(s) they are associated with.'),
(201, '11.2.1.25', 'NOTE 2: This success criterion is identical to the WCAG 2.0 Success Criterion 2.4.6 Headings and labels with the addition of note 1 above.'),
(202, '11.2.1.26', 'NOTE: This success criterion is identical to the WCAG 2.0 Success Criterion 2.4.7 Focus visible.'),
(203, '11.2.1.27', 'NOTE 1: Where software platforms provide a "locale / language" setting, applications that use that setting and render their interface in that "locale / language" would comply with this success criterion. Applications that do not use the platform "locale / language" setting but instead use an accessibility-supported method for exposing the human language of the software would also comply with this success criterion. Applications implemented in technologies where assistive technologies cannot determine the human language and that do not support the platform "locale / language" setting may not be able to meet this success criterion in that locale / language.'),
(204, '11.2.1.27', 'NOTE 2: This success criterion is identical to the WCAG 2.0 Success Criterion 3.1.1 Language of page, replacing "each web page" with "software" and with the addition of note 1 above.'),
(205, '11.2.1.29', 'NOTE 1: Some compound documents and their user agents are designed to provide significantly different viewing and editing functionality depending upon what portion of the compound document is being interacted with (e.g. a presentation that contains an embedded spreadsheet, where the menus and toolbars of the user agent change depending upon whether the user is interacting with the presentation content, or the embedded spreadsheet content). If the user uses a mechanism other than putting focus on that portion of the compound document with which they mean to interact (e.g. by a menu choice or special keyboard gesture), any resulting change of context would not be subject to this success criterion because it was not caused by a change of focus.'),
(206, '11.2.1.29', 'NOTE 2: This success criterion is identical to the WCAG 2.0 Success Criterion 3.2.1 On focus, with the addition of note 1 above.'),
(207, '11.2.1.30', 'NOTE: This success criterion is identical to the WCAG 2.0 Success Criterion 3.2.2 On input.'),
(208, '11.2.1.33', 'NOTE: This success criterion is identical to the WCAG 2.0 Success Criterion 3.3.1 Error identification.'),
(209, '11.2.1.34', 'NOTE: This success criterion is identical to the WCAG 2.0 Success Criterion 3.3.2 Labels or instructions.'),
(210, '11.2.1.35', 'NOTE: This success criterion is identical to the WCAG 2.0 Success Criterion 3.3.3 Error suggestion.'),
(211, '11.2.1.36', 'NOTE: This success criterion is identical to the WCAG 2.0 Success Criterion 3.3.4 Error prevention (legal, financial, data) replacing "web pages" with "software".'),
(212, '11.2.1.37', 'NOTE 1: Start and end tags that are missing a critical character in their formation, such as a closing angle bracket or a mismatched attribute value quotation mark are not complete.'),
(213, '11.2.1.37', 'NOTE 2: Markup is not always available to assistive technology or to user selectable user agents such as browsers. In such cases, conformance to this provision would have no impact on accessibility as it can for web content where it is exposed.'),
(214, '11.2.1.37', 'NOTE 3: Examples of markup that is separately exposed and available to assistive technologies and to user agents include but are not limited to: documents encoded in HTML, ODF, and OOXML. In these examples, the markup can be parsed entirely in two ways: (a) by assistive technologies which may directly open the document, (b) by assistive technologies using DOM APIs of user agents for these document formats.'),
(215, '11.2.1.37', 'NOTE 4: Examples of markup used internally for persistence of the software user interface that are never exposed to assistive technology include but are not limited to: XUL, GladeXML, and FXML. In these examples assistive technology only interacts with the user interface of generated software.'),
(216, '11.2.1.37', 'NOTE 5: This success criterion is identical to the WCAG 2.0 Success Criterion 4.1.1 Parsing replacing "In content implemented using markup languages" with "For software that uses markup languages, in such a way that the markup is separately exposed and available to assistive technologies and accessibility features of software or to a user-selectable user agent" with the addition of notes 2, 3 and 4 above.'),
(217, '11.2.1.38', 'NOTE 1: This success criterion is primarily for software developers who develop or use custom user interface components. Standard user interface components on most accessibility-supported platforms already meet this success criterion when used according to specification.'),
(218, '11.2.1.38', 'NOTE 2: For conforming to this success criterion, it is usually best practice for software user interfaces to use the accessibility services provided by platform software. These accessibility services enable interoperability between software user interfaces and both assistive technologies and accessibility features of software in standardised ways. Most platform accessibility services go beyond programmatic exposure of name and role, and programmatic setting of states, properties and values (and notification of same), and specify additional information that could or should be exposed and / or set (for instance, a list of the available actions for a given user interface component, and a means to programmatically execute one of the listed actions).'),
(219, '11.2.1.38', 'NOTE 3: This success criterion is identical to the WCAG 2.0 Success Criterion 4.1.2 Name, Role, Value replacing the original WCAG 2.0 note with: "This success criterion is primarily for software developers who develop or use custom user interface components. Standard user interface components on most accessibility-supported platforms already meet this success criterion when used according to specification." and the addition of note 2 above.'),
(220, '11.2.2.01', 'NOTE: Clause 11.2.1.1 requires text or a text alternative to be available as an equivalent to non-text content. Clause 5.1.3.6 addresses that need when functionality is closed to screen reading.'),
(221, '11.2.2.02.1', 'NOTE: Clause 11.2.1.2 requires a text alternative for time based audio media. Clause 5.1.5 addresses the same need by asking for the provision of visual information that is equivalent to the pre-recorded auditory output.'),
(222, '11.2.2.02.2', 'NOTE: Clause 11.2.1.2 requires a text alternative for time based video media. Clause 5.1.3.7 addresses that same need by requiring the presentation of equivalent information for the pre-recorded video content in the form of speech output.'),
(223, '11.2.2.04', 'NOTE: One of the options available to authors as a means to meet clause 11.2.1.4 is providing a media alternative that is text, which necessarily relies on a connected assistive technology to be presented. Clause 5.1.3.7 addresses that same need when functionality is closed to screen reading.'),
(224, '11.2.2.07', 'NOTE 1: Many people who are legally blind still have visual ability, and use aspects of the visual display even if it cannot be fully comprehended. An audio alternative that is both complete and complementary includes all visual information such as focus or highlighting, so that the audio can be correlated with information that is visible on the screen at any point in time.'),
(225, '11.2.2.07', 'NOTE 2: Examples of auditory information that allows the user to correlate the audio with the information displayed on the screen include structure and relationships conveyed through presentation.'),
(226, '11.2.2.07', 'NOTE 3: Clause 11.2.1.7 requires information to be in a programmatically determinable form in order for relationships to be determined.'),
(227, '11.2.2.08', 'NOTE 1: Many people who are legally blind still have visual ability, and use aspects of the visual display even if it cannot be fully comprehended. An audio alternative that is both complete and complementary includes all visual information such as focus or highlighting, so that the audio can be correlated with information that is visible on the screen at any point in time.'),
(228, '11.2.2.08', 'NOTE 2: Examples of auditory information that allows the user to correlate the audio with the information displayed on the screen include structure and relationships conveyed through presentation.'),
(229, '11.2.2.08', 'NOTE 3: Clause 11.2.1.8 requires information to be in a programmatically determinable form in order for reading sequence to be determined.'),
(230, '11.2.2.13', 'NOTE 1: Clause 11.2.1.13 requires information to be in a programmatically determinable form in order for reading sequence to be determined. Clause 5.1.4 addresses the same need for larger text.'),
(231, '11.2.2.13', 'NOTE 2: Because the text rendering support in a closed environment may be more limited than the support found in user agents for the Web, meeting 11.2.1.13 in a closed environment may place a much heavier burden on the content author.'),
(232, '11.2.2.15', 'NOTE: Clause 11.2.1.15 requires operation via a keyboard interface which allows alternative input devices. Clause 5.1.6.1 addresses the same user need without the need for a keyboard interface.'),
(233, '11.2.2.27', 'NOTE: Clause 11.2.1.27 requires information to be in a programmatically determinable form in order for the language of software to be determined. Clause 5.1.3.14 addresses the need to ensure that the user is presented with information in an appropriate language.'),
(234, '11.2.2.33', 'NOTE: While it is important for errors that can be detected to be described to the user, clause 11.2.1.33 requires this information to be provided in text, as defined in WCAG 2.0. Clause 5.1.3.15 addresses the same need to describe errors to users.'),
(235, '11.3.2.01', 'NOTE 1: These define the minimum functionality of software providing user interfaces when using platform services.'),
(236, '11.3.2.01', 'NOTE 2: In some platforms these services may be called accessibility services, but in some other platforms these services may be provided as part of the user interface services.'),
(237, '11.3.2.01', 'NOTE 3: User interface services that provide accessibility support by default are considered to be part of the services provided to conform to this clause (e.g. the service for creating a new user interface element provides role, state, boundary, name and description).'),
(238, '11.3.2.01', 'NOTE 4: To comply with this requirement the platform software can provide its own set of services or expose the services provided by its underlying platform layers, if those services conform to this requirement.'),
(239, '11.3.2.01', 'NOTE 5: Within specific programming environments, the technical attributes associated with the user interface properties described in clauses 11.3.2.5 to 11.3.2.17 might have different names than those used within the clauses.'),
(240, '11.3.2.03', 'NOTE: The term "documented platform accessibility services" refers to the set of services provided by the platform according to clauses 11.3.2.1 and 11.3.2.2.'),
(241, '11.3.2.04', 'NOTE 1: The term "documented platform accessibility services" refers to the set of services provided by the platform according to clauses 11.3.2.1 and 11.3.2.2.');
INSERT INTO `noteofclause` (`idNote`, `idClause`, `text`) VALUES
(242, '11.3.2.04', 'NOTE 2: Assistive technology can also use other documented accessibility services.'),
(243, '11.3.2.12', 'NOTE 1: In some cases the security requirements imposed on a software product may forbid external software from interfering with the ICT product. Examples of systems under strict security requirements are systems dealing with intelligence activities, cryptologic activities related to national security, command and control of military forces.'),
(244, '11.3.2.12', 'NOTE 2: Assistive technologies may be required to maintain the same level of security as the standard input mechanisms supported by the platform.'),
(245, '11.3.2.14', 'NOTE 1: In some cases the security requirements imposed on a software product may forbid external software from interfering with the ICT product and so this requirement would not apply. Examples of systems under strict security requirements are systems dealing with intelligence activities, cryptologic activities related to national security, command and control of military forces.'),
(246, '11.3.2.14', 'NOTE 2: Assistive technologies may be required to maintain the same level of security as the standard input mechanisms supported by the platform.'),
(247, '11.3.2.16', 'NOTE 1: In some cases the security requirements imposed on a software product may forbid external software from interfering with the ICT product and so this requirement would not apply. Examples of systems under strict security requirements are systems dealing with intelligence activities, cryptologic activities related to national security, command and control of military forces.'),
(248, '11.3.2.16', 'NOTE 2: Assistive technologies may be required to maintain the same level of security as the standard input mechanisms supported by the platform.'),
(249, '11.3.2.17', 'NOTE 1: In some cases the security requirements imposed on a software product may forbid external software from interfering with the ICT product and so this requirement would not apply. Examples of systems under strict security requirements are systems dealing with intelligence activities, cryptologic activities related to national security, command and control of military forces.'),
(250, '11.3.2.17', 'NOTE 2: Assistive technologies may be required to maintain the same level of security as the standard input mechanisms supported by the platform.'),
(251, '11.5', 'NOTE: Software that is isolated from its underlying platform has no access to user settings in the platform and thus cannot adhere to them.'),
(252, '11.6.2', 'NOTE: Authoring tools may rely on additional tools where conformance with specific requirements is not achievable by a single tool. For example, a video editing tool may enable the creation of video files for distribution via broadcast television and the web, but authoring of caption files for multiple formats may be provided by a different tool.'),
(253, '11.6.3', 'NOTE 1: Restructuring transformations are transformations in which the content technology stays the same, but the structural features of the content are changed (e.g. linearizing tables, splitting a document into pages).'),
(254, '11.6.3', 'NOTE 2: Re-coding transformations are transformations in which the technology used to encode the content is changed.'),
(255, '11.6.4', 'NOTE: This does not preclude automated and semi-automated repair which is possible (and encouraged) for many types of content accessibility problems.'),
(256, '12.1.1', 'NOTE: Accessibility and compatibility features include accessibility features that are built-in and accessibility features that provide compatibility with assistive technology.'),
(257, '12.1.2', 'NOTE 1: This does not preclude the possibility of also providing the product documentation in other formats (electronic or printed) that are not accessible.'),
(258, '12.1.2', 'NOTE 2: It also does not preclude the possibility of providing alternate formats that meet the needs of some specific type of users (e.g. Braille documents for blind people or easy-to-read information for persons with cognitive impairments).'),
(259, '12.1.2', 'NOTE 3: Where the documentation is integral to the ICT it will be provided through the user interface which is accessible.'),
(260, '12.1.2', 'NOTE 4: A user agent that supports automatic media conversion would be beneficial to enhancing accessibility.'),
(261, '12.2.2', 'NOTE: Accessibility and compatibility features include accessibility features that are built-in and accessibility features that provide compatibility with assistive technology.'),
(262, '12.2.4', 'NOTE 1: This does not preclude the possibility of also providing the documentation in other formats (electronic or printed) that are not accessible.'),
(263, '12.2.4', 'NOTE 2: It also does not preclude the possibility of providing alternate formats that meet the needs of some specific type of users (e.g. Braille documents for blind people or easy-to-read information for persons with cognitive impairments).'),
(264, '12.2.4', 'NOTE 3: A user agent that supports automatic media conversion would be beneficial to enhancing accessibility.'),
(265, '13.1.3', 'NOTE: Sign relay services are also sometimes referred to as sign language relay services or video relay services.'),
(266, '13.2', 'NOTE 1: Two-way communication may include voice, real-time text, or video, singly or in combinations supported by both the relay service and the ICT system.'),
(267, '13.2', 'NOTE 2: The purpose of this requirement is to achieve functionally equivalent communication access by persons with disabilities.'),
(268, '13.3', 'NOTE 1: Two–way communication may include voice, real-time text, or video, singly or in combinations supported by both the emergency service and the ICT system.'),
(269, '13.3', 'NOTE 2: The purpose of this requirement is to achieve functionally equivalent communication access to the emergency service by persons with disabilities.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `id` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `project`
--

INSERT INTO `project` (`id`, `idUser`, `name`, `description`, `date`) VALUES
(44, 192, 'Project0', 'aaaa', '0000-00-00'),
(60, 192, 'a', 'a', '0000-00-00'),
(61, 192, 'a', 'a', '0000-00-00'),
(63, 192, 'aaaaaa', 'a', '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `id` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `text` varchar(140) COLLATE utf8_spanish_ci NOT NULL,
  `help` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `nextyes` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `nextno` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `relatedPositive` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `relatedNegative` varchar(15) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `question`
--

INSERT INTO `question` (`id`, `text`, `help`, `nextyes`, `nextno`, `relatedPositive`, `relatedNegative`) VALUES
('Q01', 'Does the ICT have closed functionality?\r\n	', 'ICT has closed functionality for many reasons, including design or policy. Some of the functionality of products can be closed because the product is self-contained and users are precluded from adding peripherals or software in order to access that functionality. ', 'Q01.1', 'Q02', '', ''),
('Q01.1', 'Is visual information needed to enable the use of those functions of ICT that are closed to assistive technologies for screen reading?', '', 'Q01.1.1', 'Q01.2', '', ''),
('Q01.1.1', 'Is auditory output provided as non-visual access to closed functionality?', '', 'Q01.1.1.1', 'Q01.2', '', ''),
('Q01.1.1.1', 'Is speech output provided as non-visual access to closed functionality?', '', 'Q01.2', 'Q01.2', '', ''),
('Q01.2', 'Is ICT functionality closed to keyboards or keyboard interfaces?', '', 'Q02', 'Q02', '', ''),
('Q02', 'Does the ICT have operable parts?', '', 'Q02.1', 'Q02.1', '', ''),
('Q02.1', 'Does the ICT have a locking or toggle control?', '', 'Q03', 'Q03', '', ''),
('Q03', 'Does the ICT provide two-way voice communication?', '', 'Q03.1', 'Q04', '', ''),
('Q03.1', 'Does the ICT have RTT capabilities?', '', 'Q03.1.1', 'Q03.2', '', ''),
('Q03.1.1', 'Does the ICT support assistive technologies (i.e. it is not closed)?', '', 'Q03.2', 'Q03.2', '', 'Q01'),
('Q03.2', 'Does the ICT include real-time video functionality?', '', 'Q04', 'Q04', '', ''),
('Q04', 'Does the ICT have video capabilities (playing, transmitting, converting or recording)?', '', 'Q05', 'Q05', '', ''),
('Q05', 'Is the ICT hardware or does the ICT has hardware?', '', 'Q05.1', 'Q06', '', ''),
('Q05.1', 'Does the ICT have hardware speech output?', '', 'Q05.2', 'Q05.2', '', ''),
('Q05.2', 'Does the ICT have physical dimensions that are integral to the ICT and that may restrict physical access?', '', 'Q05.3', 'Q05.3', '', ''),
('Q05.3', 'Does the ICT have mechanically operable parts?', '', 'Q06', 'Q06', '', ''),
('Q06', 'Is the ICT a web page or does the ICT have web pages?', '', 'Q07', 'Q07', '', ''),
('Q07', 'Is the ICT a non-web document or does the ICT have non-web documents?', '', 'Q08', 'Q08', '', ''),
('Q08', 'Is the ICT software or does the ICT have software?', '', 'Q08.1', 'Q09', '', ''),
('Q08.1', 'Is it non-web software that provides a user interface?', '', 'Q08.1.1', 'Q08.2', '', ''),
('Q08.1.1', 'Does the non-web software have functionality that supports access to assistive technologies (i.e. it is not closed)?', '', 'Q08.1.2', 'Q08.1.2', '', 'Q01'),
('Q08.1.2', 'Does the non-web software have closed functionality?', '', 'Q08.2', 'Q08.2', 'Q01', ''),
('Q08.2', 'Is it platform software?', '', 'Q08.3', 'Q08.3', '', ''),
('Q08.3', 'Does the software support access to assistive technologies (i.e. it is not closed)?', '', 'Q08.4', 'Q08.4', '', 'Q01'),
('Q08.4', 'Does the non-web software have closed functionality?', '', 'Q08.5', 'Q08.5', 'Q01', ''),
('Q08.5', 'Is the ICT an authoring tool?', '', 'Q09', 'Q09', '', ''),
('Q09', 'Does the ICT have product documentation?', '', 'Q10', 'Q10', '', ''),
('Q10', 'Does the ICT have support services?', '', 'Q11', 'Q11', '', ''),
('Q11', 'Is the ICT intended to provide relay services?', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `session`
--

CREATE TABLE IF NOT EXISTS `session` (
  `id` varchar(550) NOT NULL,
  `idUser` int(11) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `path` varchar(100) NOT NULL,
  `expires` datetime NOT NULL,
  `originalMaxAge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `session`
--

INSERT INTO `session` (`id`, `idUser`, `userName`, `path`, `expires`, `originalMaxAge`) VALUES
('tl3jBz0AYSjQXxD0IXpem7bwx_2wD0YT', 192, 'user0', '/', '2015-12-20 19:36:08', 3599988);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `roles` set('Administrator','Project Manager','Evaluator') NOT NULL,
  `comments` varchar(500) NOT NULL,
  `hitRatio` float NOT NULL,
  `numProject` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `firstName`, `lastName`, `userName`, `email`, `password`, `roles`, `comments`, `hitRatio`, `numProject`) VALUES
(192, 'firstname0', 'lastname0', 'user0', 'a@gmail.com', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', 'Administrator,Project Manager,Evaluator', 'aaa', 0, 0),
(193, 'firstname1', 'lastname1', 'user1', 'a@gmail.com', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', 'Evaluator', 'aaa', 0, 0),
(194, 'firstname2', 'lastname2', 'user2', 'a@gmail.com', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', 'Evaluator', 'aaa', 0, 0),
(195, 'firstname3', 'lastname3', 'user3', 'a@gmail.com', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', 'Evaluator', 'aaa', 0, 0),
(196, 'firstname4', 'lastname4', 'user4', 'a@gmail.com', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', 'Evaluator', 'aaa', 0, 0),
(197, 'firstname5', 'lastname5', 'user5', 'a@gmail.com', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', 'Evaluator', 'aaa', 0, 0),
(198, 'firstname10', 'lastname10', 'user10', 'a@gmail.com', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', 'Evaluator', 'aaa', 0, 0),
(199, 'firstname11', 'lastname11', 'user11', 'a@gmail.com', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', 'Evaluator', 'aaa', 0, 0),
(200, 'firstname16', 'lastname16', 'user16', 'a@gmail.com', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', 'Evaluator', 'aaa', 0, 0),
(201, 'firstname7', 'lastname7', 'user7', 'a@gmail.com', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', 'Evaluator', 'aaa', 0, 0),
(202, 'firstname17', 'lastname17', 'user17', 'a@gmail.com', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', 'Evaluator', 'aaa', 0, 0),
(203, 'firstname6', 'lastname6', 'user6', 'a@gmail.com', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', 'Evaluator', 'aaa', 0, 0),
(204, 'firstname8', 'lastname8', 'user8', 'a@gmail.com', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', 'Evaluator', 'aaa', 0, 0),
(205, 'firstname18', 'lastname18', 'user18', 'a@gmail.com', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', 'Evaluator', 'aaa', 0, 0),
(206, 'firstname13', 'lastname13', 'user13', 'a@gmail.com', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', 'Evaluator', 'aaa', 0, 0),
(207, 'firstname14', 'lastname14', 'user14', 'a@gmail.com', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', 'Evaluator', 'aaa', 0, 0),
(208, 'firstname15', 'lastname15', 'user15', 'a@gmail.com', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', 'Evaluator', 'aaa', 0, 0),
(209, 'firstname19', 'lastname19', 'user19', 'a@gmail.com', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', 'Evaluator', 'aaa', 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idQuest` (`idQuest`),
  ADD KEY `idProj` (`idProj`);

--
-- Indices de la tabla `clause`
--
ALTER TABLE `clause`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clausesofproject`
--
ALTER TABLE `clausesofproject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idClause` (`idClause`),
  ADD KEY `idProj` (`idProj`),
  ADD KEY `idAnswer` (`idAnswer`);

--
-- Indices de la tabla `clausesofquestion`
--
ALTER TABLE `clausesofquestion`
  ADD KEY `idQuest` (`idQuest`),
  ADD KEY `idClause` (`idClause`);

--
-- Indices de la tabla `compliance`
--
ALTER TABLE `compliance`
  ADD PRIMARY KEY (`idCompliance`),
  ADD KEY `idClause` (`idClause`);

--
-- Indices de la tabla `evaluation`
--
ALTER TABLE `evaluation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idProj` (`idProj`),
  ADD KEY `idClause` (`idClause`);

--
-- Indices de la tabla `evaluatorofproject`
--
ALTER TABLE `evaluatorofproject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUser` (`idUser`),
  ADD KEY `idProject` (`idProj`);

--
-- Indices de la tabla `initialclauses`
--
ALTER TABLE `initialclauses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `noteofclause`
--
ALTER TABLE `noteofclause`
  ADD PRIMARY KEY (`idNote`),
  ADD KEY `idClause` (`idClause`);

--
-- Indices de la tabla `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUser` (`idUser`);

--
-- Indices de la tabla `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userName` (`userName`),
  ADD KEY `idUser` (`idUser`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT de la tabla `clausesofproject`
--
ALTER TABLE `clausesofproject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `compliance`
--
ALTER TABLE `compliance`
  MODIFY `idCompliance` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=245;
--
-- AUTO_INCREMENT de la tabla `evaluation`
--
ALTER TABLE `evaluation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `evaluatorofproject`
--
ALTER TABLE `evaluatorofproject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=210;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`idQuest`) REFERENCES `question` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pppp` FOREIGN KEY (`idProj`) REFERENCES `project` (`id`);

--
-- Filtros para la tabla `clausesofproject`
--
ALTER TABLE `clausesofproject`
  ADD CONSTRAINT `a` FOREIGN KEY (`idAnswer`) REFERENCES `answer` (`id`),
  ADD CONSTRAINT `clausesofproject_ibfk_1` FOREIGN KEY (`idClause`) REFERENCES `clause` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ppp` FOREIGN KEY (`idProj`) REFERENCES `project` (`id`);

--
-- Filtros para la tabla `clausesofquestion`
--
ALTER TABLE `clausesofquestion`
  ADD CONSTRAINT `clausesofquestion_ibfk_1` FOREIGN KEY (`idQuest`) REFERENCES `question` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `clausesofquestion_ibfk_2` FOREIGN KEY (`idClause`) REFERENCES `clause` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `compliance`
--
ALTER TABLE `compliance`
  ADD CONSTRAINT `rel` FOREIGN KEY (`idClause`) REFERENCES `clause` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `evaluation`
--
ALTER TABLE `evaluation`
  ADD CONSTRAINT `pp` FOREIGN KEY (`idProj`) REFERENCES `project` (`id`),
  ADD CONSTRAINT `res2` FOREIGN KEY (`idClause`) REFERENCES `clause` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `evaluatorofproject`
--
ALTER TABLE `evaluatorofproject`
  ADD CONSTRAINT `p` FOREIGN KEY (`idProj`) REFERENCES `project` (`id`),
  ADD CONSTRAINT `rrr` FOREIGN KEY (`idUser`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `noteofclause`
--
ALTER TABLE `noteofclause`
  ADD CONSTRAINT `rel1` FOREIGN KEY (`idClause`) REFERENCES `clause` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `rr` FOREIGN KEY (`idUser`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `r` FOREIGN KEY (`idUser`) REFERENCES `user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
