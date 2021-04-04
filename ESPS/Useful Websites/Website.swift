//
//  Website.swift
//  ESPS
//
//  Created by Ramshad Basheer on 19/02/2021.
//

import Foundation


struct Website: Identifiable {
    let title: String
    let desc: String
    let url: String
    let id = UUID()
}

let websiteList = [
    
    Website(title: "Heart Foundation", desc: "Healthy eating information", url: "http://heartfoundation.org.au/healthy-eating"),
    Website(title: "Heart Foundation", desc: "Physical Activity Information", url: "http://heartfoundation.org.au/active-living"),
    Website(title: "Heart Foundation", desc: "Jump Rope for Heart", url: "http://heartfoundation.org.au/jump-rope-for-heart-outreach-program"),
    Website(title: "Healthy Kids", desc: "Information on healthy eating and physical activity for children, families, educators and teachers", url: "http://www.healthykids.nsw.gov.au"),
    Website(title: "Eat for Health by Australian Government", desc: "Includes the Australian Dietary Guidelines, Australian Guide to Healthy Eating and resources you can order.", url: "https://www.eatforhealth.gov.au"),
    Website(title: "Australia’s Physical Activity and Sedentary Behaviour Guidelines", desc: "Includes information on including physical activity and resources you can order.", url: "http://www.health.gov.au/internet/main/publishing.nsf/content/health-pubhlth-strategphys-act-guidelines"),
    Website(title: "A Healthy and Active Australia", desc: "This website provides a range of information and initiatives on healthy eating and regular physical activity to assist all Australians to lead healthy and active lives.", url: "http://www.healthyactive.gov.au"),
    Website(title: "Make Healthy Normal", desc: "NSW Health website encouraging healthy eating and physical activity to encourage lifestyle changes.", url: "https://www.makehealthynormal.nsw.gov.au"),
    Website(title: "The Premier’s Sporting Challenge", desc: "The Premier’s Sporting Challenge is a NSW Government initiative facilitated by the NSW Department of Education that aims to engage young people in sport and physical activity and encourage them to lead healthy, active lifestyles. The Challenge includes a range of programs with one common purpose: to have more students, more active, more often!", url: "https://online.det.nsw.edu.au/psc/home.html"),
    Website(title: "NSW School Sport Unit", desc: "This Unit within the NSW Department of Education supports appropriate sport programs for all public school students. The website provides resources for teachers, information on sports safety guidelines, opportunities for students with disabilities, a calendar of events and links to regional school sports associations.", url: "http://www.sports.det.nsw.edu.au/welcome.html"),
    Website(title: "Sporting Schools Australia", desc: "Sporting Schools Australia offers grants to schools for sport based activities before, during and after school.",
            url: "https://sportingschools.gov.au/"),
    Website(title: "Premier's Council for Active Living", desc: "Guidelines for using external providers for physical activity in out of school services.", url: "http://www.pcal.nsw.gov.au/__data/assets/pdf_file/0007/36394/Guidelines_for_using_external_providers_for_physical_activity_in_out_of_school_hours_centres.pdf"),
    Website(title: "Eat for Health", desc: "Useful Food Label website", url: "https://www.eatforhealth.gov.au/eating-well/how-understand-food-labels"),
    Website(title: "Health Star Rating System", desc: "Useful Food Label website", url: "https://www.healthstarrating.gov.au"),
    Website(title: "NSW Food Authority", desc: "Useful Food Label website", url: "https://www.foodauthority.nsw.gov.au/ip/labelling"),
    Website(title: "Australian Government", desc: "Useful Food Label website", url: "https://www.foodlabels.industry.gov.au"),
    Website(title: "Anaphylaxis Australia",desc: "Useful Specific Dietary website",url: "https://www.allergy.org.au"),
    Website(title: "Diabetes Australia",desc: "Useful Specific Dietary website",url: "https://www.diabetesaustralia.com.au"),
    Website(title: "Asthma Management Guidelines",desc: "Useful Specific Dietary website",url: "http://networkofcommunityactivities.org.au/wpcontent/uploads/2013/03/asthma_aware_kit.pdf"),
    Website(title: "Coeliac Australia",desc: "Useful Specific Dietary website",url: "https://www.coeliac.org.au"),
    Website(title: "Coeliac NSW & ACT. Helpline 1300 458 836",desc: "Useful Specific Dietary website",url: "https://nswact.coeliac.org.au/coeliacdisease/"),
    Website(title: "NSW Food Authority",desc: "Useful Food Handing and Hygiene website",url: "http://foodauthority.nsw.gov.au"),
    Website(title: "Staying Healthy. Preventing infectious diseases in early childhood education and care services",desc: "Useful Food Handing and Hygiene website",url: "https://www.nhmrc.gov.au/guidelines-publications/ch55")

    
]



