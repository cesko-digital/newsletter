# číst.digital aneb newsletter Česko.Digital

Základní fakta:

* V newsletteru posíláme hodně informací, takže kdyby chodil v prostém textu, bude to blok textu k neučtení (čest výjimkám).
* Řešením je design, který mimo jiné obsah vylehčí a umožní čtenářům snadno projet a vybrat si, co je zajímá.
* K tomu slouží HTML e-maily, které ovšem mají velmi různorodou a velmi mizernou podporu v různých e-mailových klientech, viz například projekt [Can I email?](https://www.caniemail.com).
* Svět HTML v e-mailových klientech je ve stručnosti absolutně nesrovnatelný s moderními webovými technologiemi.
* Z toho plyne hodně bolesti.

## Vizuální editory vs. generování v kódu

Jedno z řešení nabízí vizuální editory v mailingových aplikacích typu Ecomail (používáme) nebo Mailchimp. Ty ale bohužel zpravidla mívají řadu nevýhod, například mají diskutabilní UX, jsou hodně náchylné na chyby, je značně pracné do nich „naklikat“ něco složitějšího a špatně se automatizují nebo integrují do dalších workflows.

Jedno z možných řešení je vizuální návrh úplně obejít a generovat výsledný HTML kód automaticky z nějaké jednodušší předlohy. Přesně to nabízí projekt [mjml](https://mjml.io) – nabídne vám relativně jednoduchý značkovací jazyk, který následně přeloží na zběsilé HTML vhodné pro e-mailové klienty. Ecomail pak používáme pouze k rozesílce tohoto hotového HTML.

Výhodou generování v kódu je důvěryhodnost (nerozboříte si část hotové práce nějakým náhodným překliknutím), opakovatelnost (pokroky z jednoho vydání se velmi snadno dají zopakovat v dalším) a možnost integrace do dalších workflows (například automatizace některých částí newsletteru nebo generování podkladů pro blog).

## Jak to funguje v praxi

* Když se doladí text newsletteru, překlopí se do formátu mjml tady v repository.
* Jakmile se šablona odladí, zkopíruje se do kampaně v Ecomailu a rozešle běžným způsobem.
* Newslettery z tohoto repa jsou automaticky vidět na newsletter.cesko.dev, [viz například tady](https://newsletter.cesko.dev/22.html).
* Pro editaci zdrojového kódu šablony doporučujeme [VS Code](https://code.visualstudio.com) s extension pro mjml (`mjmlio.vscode-mjml`), díky které dostanete validaci, formátování i náhled výsledné šablony.

Tenhle postup _není ideální_, pořád je v něm příliš mnoho nepěkné ruční práce s HTML. Pořád je to ale práce, na kterou je ve výsledku větší spoleh, můžeme ji dlouhodobě lépe využít napříč různými vydáními newsletteru a především by měla jít dál eliminovat, například automatickou konverzí formátů nebo zavedením mjml komponent.