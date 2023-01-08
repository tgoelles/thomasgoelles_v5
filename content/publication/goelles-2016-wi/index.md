---
# Documentation: https://wowchemy.com/docs/managing-content/

title: 'Impurities of glacier ice: accumulation, transport and albedo'
subtitle: ''
summary: ''
authors:
- admin
tags: []
categories: []
date: '2016-09-01'
lastmod: 2023-01-08T00:25:46+01:00
featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ''
  focal_point: ''
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: ["phd_project"]
publishDate: '2023-01-07T23:25:46.310347Z'
publication_types:
- '7'
abstract: ''
publication: ''
---

The Greenland ice sheet is the largest ice mass in the Northern Hemisphere and has experienced accelerating mass loss in recent decades. An increase in surface melt is the major cause for the loss of mass. Albedo is a major control of surface melt and has decreased over the entire Greenland ice sheet, especially at lower elevations near the margin where glacier ice is exposed for part of each year. The albedos of ice and snow are lowered by dark impurities such as mineral dust and black carbon, a by-product of combustion. These impurities are a heterogeneous group of highly absorbent particles which reach the ice sheet via atmospheric transport from distant and local sources. Parts of these impurities are buried in the accumulation zone and become part of the moving ice. After a significant transport time, up to tens of thousands of years, these englacial impurities re-emerge in the ablation zone near the margin. These re-emerging impurities, together with those directly deposited, accumulate on the ice surface. Once located on the ice surface, these impurities darken the ice surface for several years and lower the albedo, causing more melt. Current sea-level projections rarely include albedo as a dynamic model component. In models which consider albedo, snow albedo is often treated with sophisticated methods, while ice albedo is still treated as a constant. Albedo lowering is a major cause of the current mass loss of the Greenland ice sheet, and the role of ice albedo will increase under a warmer climate. Therefore, this study presents a model with a dynamic component of ice albedo. The model framework includes the effect of impurities on the mass balance and ice sheet geometry. The framework consists of an ice dynamics component which is linked to a module of englacial impurity transport. This component feeds into the impurity accumulation module, which deals with both snow and ice. An albedo module which accounts for mineral dust and black carbon accumulation uses this output to derive daily albedo values. A simplified surface energy balance model is used to derive the surface melt rate and surface mass balance, which is then fed back into the ice dynamics component. This model framework is used to investigate the role of melt-out and impurity accumulation on the melt of the Greenland ice sheet. For that purpose, simplified geometry and different temperature pathways are used to simulate the evolution of the ice sheet over 1000 years. Due to the feedback between melt-out, ice albedo and impurity accumulation, the role of impurities is disproportionally larger in warmer scenarios. In the warmest scenario (RCP8.5), a conservative estimate for the additional mass loss due to impurity accumulation in the year 3000 was 7\%. Melt-out of dust is the largest source of impurities on the ice surface. Darkening is not always dominated by dust, however, due to the high absorption of black carbon. The amount of impurities from melt-out depends on the englacial impurity concentration and surface melt. The englacial impurity concentration, in turn, relies on the computed age of the ice and a time series of impurity concentration. Therefore, the accuracy of the transport scheme, which provides the age of the ice, is crucial for overall accuracy. A semi-Lagrangian transport scheme of second-order accuracy was implemented in the 3D ice sheet model SICOPOLIS (SImulation COde for POLythermal Ice Sheets). The model was applied to the ice sheets of Greenland and Antarctica. Artificial ice cores of delta 18O, a proxy for surface temperature, were compared to ice core data. The results of the second-order scheme were identical to the results of the first-order scheme in the ice sheet interior. The results deviated substantially, however, in the outer regions near the margin. The results emphasise that the role of ice albedo and impurities for the surface mass balance will be even greater under warmer conditions. Furthermore, the presented model framework is not limited to Greenland but can also be adapted for valley glaciers and paleo-ice sheets.