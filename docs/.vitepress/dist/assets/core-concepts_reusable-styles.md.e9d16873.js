import{_ as s,o as n,c as a,O as l}from"./chunks/framework.b6d6640e.js";const F=JSON.parse('{"title":"Reusable Styles","description":"","frontmatter":{},"headers":[],"relativePath":"core-concepts/reusable-styles.md","filePath":"core-concepts/reusable-styles.md"}'),p={name:"core-concepts/reusable-styles.md"},o=l(`<h1 id="reusable-styles" tabindex="-1">Reusable Styles <a class="header-anchor" href="#reusable-styles" aria-label="Permalink to &quot;Reusable Styles&quot;">​</a></h1><p>Building flutter apps can sometimes leave us with a lot of garbage which can cause problems in the user experience. Here we generates styles in a way that can be used from any widget and we don&#39;t have to define then again and again.</p><h2 id="examples" tabindex="-1">Examples: <a class="header-anchor" href="#examples" aria-label="Permalink to &quot;Examples:&quot;">​</a></h2><p>Here are some examples of how we create styles for different purposes.</p><h3 id="colors" tabindex="-1">Colors <a class="header-anchor" href="#colors" aria-label="Permalink to &quot;Colors&quot;">​</a></h3><p>Unlock a World of Color Harmony with Our Centralized Color Library Encapsulated in <code>TwColors</code> Class - The Ultimate Solution for Consistent Widget Color Schemes!</p><div class="language-dart line-numbers-mode"><button title="Copy Code" class="copy"></button><span class="lang">dart</span><pre class="shiki material-theme-palenight has-focused-lines"><code><span class="line has-focus"><span style="color:#89DDFF;">class</span><span style="color:#A6ACCD;"> </span><span style="color:#FFCB6B;">TwColors</span><span style="color:#A6ACCD;">{ </span></span>
<span class="line has-focus"><span style="color:#A6ACCD;">    </span><span style="color:#676E95;font-style:italic;">/// Theme Colors </span></span>
<span class="line has-focus"><span style="color:#A6ACCD;">    </span><span style="color:#C792EA;">static</span><span style="color:#A6ACCD;"> </span><span style="color:#FFCB6B;">Color</span><span style="color:#A6ACCD;"> </span><span style="color:#82AAFF;">primaryColor</span><span style="color:#A6ACCD;">(</span><span style="color:#FFCB6B;">BuildContext</span><span style="color:#A6ACCD;"> context) </span><span style="color:#89DDFF;">=&gt;</span><span style="color:#A6ACCD;"> </span><span style="color:#FFCB6B;">Theme</span><span style="color:#89DDFF;">.</span><span style="color:#82AAFF;">of</span><span style="color:#A6ACCD;">(context)</span><span style="color:#89DDFF;">.</span><span style="color:#A6ACCD;">primaryColor</span><span style="color:#89DDFF;">;</span><span style="color:#A6ACCD;"> </span></span>
<span class="line"><span style="color:#A6ACCD;">    </span><span style="color:#C792EA;">static</span><span style="color:#A6ACCD;"> </span><span style="color:#FFCB6B;">Color</span><span style="color:#A6ACCD;"> </span><span style="color:#82AAFF;">primaryColorDark</span><span style="color:#A6ACCD;">(</span><span style="color:#FFCB6B;">BuildContext</span><span style="color:#A6ACCD;"> context) </span><span style="color:#89DDFF;">=&gt;</span><span style="color:#A6ACCD;"> </span><span style="color:#FFCB6B;">Theme</span><span style="color:#89DDFF;">.</span><span style="color:#82AAFF;">of</span><span style="color:#A6ACCD;">(context)</span><span style="color:#89DDFF;">.</span><span style="color:#A6ACCD;">primaryColorDark</span><span style="color:#89DDFF;">;</span></span>
<span class="line has-focus"><span style="color:#A6ACCD;">    </span><span style="color:#C792EA;">static</span><span style="color:#A6ACCD;"> </span><span style="color:#FFCB6B;">Color</span><span style="color:#A6ACCD;"> </span><span style="color:#82AAFF;">primaryColorLight</span><span style="color:#A6ACCD;">(</span><span style="color:#FFCB6B;">BuildContext</span><span style="color:#A6ACCD;"> context) </span><span style="color:#89DDFF;">=&gt;</span><span style="color:#A6ACCD;"> </span><span style="color:#FFCB6B;">Theme</span><span style="color:#89DDFF;">.</span><span style="color:#82AAFF;">of</span><span style="color:#A6ACCD;">(context)</span><span style="color:#89DDFF;">.</span><span style="color:#A6ACCD;">primaryColorLight</span><span style="color:#89DDFF;">;</span><span style="color:#A6ACCD;"> </span></span>
<span class="line"><span style="color:#A6ACCD;">    </span><span style="color:#C792EA;">static</span><span style="color:#A6ACCD;"> </span><span style="color:#FFCB6B;">Color</span><span style="color:#A6ACCD;"> </span><span style="color:#82AAFF;">secondary</span><span style="color:#A6ACCD;">(</span><span style="color:#FFCB6B;">BuildContext</span><span style="color:#A6ACCD;"> context) </span><span style="color:#89DDFF;">=&gt;</span><span style="color:#A6ACCD;"> </span><span style="color:#FFCB6B;">Theme</span><span style="color:#89DDFF;">.</span><span style="color:#82AAFF;">of</span><span style="color:#A6ACCD;">(context)</span><span style="color:#89DDFF;">.</span><span style="color:#A6ACCD;">colorScheme</span><span style="color:#89DDFF;">.</span><span style="color:#A6ACCD;">secondary</span><span style="color:#89DDFF;">;</span></span>
<span class="line has-focus"><span style="color:#A6ACCD;">    </span><span style="color:#C792EA;">static</span><span style="color:#A6ACCD;"> </span><span style="color:#FFCB6B;">Color</span><span style="color:#A6ACCD;"> </span><span style="color:#82AAFF;">secondaryColor</span><span style="color:#A6ACCD;">(</span><span style="color:#FFCB6B;">BuildContext</span><span style="color:#A6ACCD;"> context) </span><span style="color:#89DDFF;">=&gt;</span><span style="color:#A6ACCD;"> </span><span style="color:#FFCB6B;">Theme</span><span style="color:#89DDFF;">.</span><span style="color:#82AAFF;">of</span><span style="color:#A6ACCD;">(context)</span><span style="color:#89DDFF;">.</span><span style="color:#A6ACCD;">colorScheme</span><span style="color:#89DDFF;">.</span><span style="color:#A6ACCD;">secondary</span><span style="color:#89DDFF;">;</span><span style="color:#A6ACCD;"> </span></span>
<span class="line"><span style="color:#A6ACCD;">    </span><span style="color:#C792EA;">static</span><span style="color:#A6ACCD;"> </span><span style="color:#FFCB6B;">Color</span><span style="color:#A6ACCD;"> </span><span style="color:#82AAFF;">backgroundColor</span><span style="color:#A6ACCD;">(</span><span style="color:#FFCB6B;">BuildContext</span><span style="color:#A6ACCD;"> context) </span><span style="color:#89DDFF;">=&gt;</span><span style="color:#A6ACCD;"> </span><span style="color:#FFCB6B;">Theme</span><span style="color:#89DDFF;">.</span><span style="color:#82AAFF;">of</span><span style="color:#A6ACCD;">(context)</span><span style="color:#89DDFF;">.</span><span style="color:#A6ACCD;">backgroundColor</span><span style="color:#89DDFF;">;</span></span>
<span class="line"><span style="color:#A6ACCD;">    </span><span style="color:#C792EA;">static</span><span style="color:#A6ACCD;"> </span><span style="color:#FFCB6B;">Color</span><span style="color:#A6ACCD;"> </span><span style="color:#82AAFF;">scaffoldBackgroundColor</span><span style="color:#A6ACCD;">(</span><span style="color:#FFCB6B;">BuildContext</span><span style="color:#A6ACCD;"> context) </span><span style="color:#89DDFF;">=&gt;</span><span style="color:#A6ACCD;"> </span><span style="color:#FFCB6B;">Theme</span><span style="color:#89DDFF;">.</span><span style="color:#82AAFF;">of</span><span style="color:#A6ACCD;">(context)</span><span style="color:#89DDFF;">.</span><span style="color:#A6ACCD;">scaffoldBackgroundColor</span><span style="color:#89DDFF;">;</span></span>
<span class="line"><span style="color:#A6ACCD;">    </span><span style="color:#C792EA;">static</span><span style="color:#A6ACCD;"> </span><span style="color:#FFCB6B;">Color</span><span style="color:#A6ACCD;"> </span><span style="color:#82AAFF;">cardColor</span><span style="color:#A6ACCD;">(</span><span style="color:#FFCB6B;">BuildContext</span><span style="color:#A6ACCD;"> context) </span><span style="color:#89DDFF;">=&gt;</span><span style="color:#A6ACCD;"> </span><span style="color:#FFCB6B;">Theme</span><span style="color:#89DDFF;">.</span><span style="color:#82AAFF;">of</span><span style="color:#A6ACCD;">(context)</span><span style="color:#89DDFF;">.</span><span style="color:#A6ACCD;">cardColor</span><span style="color:#89DDFF;">;</span></span>
<span class="line"></span>
<span class="line has-focus"><span style="color:#A6ACCD;">    </span><span style="color:#676E95;font-style:italic;">/// More lots of colors which are configured in the </span><span style="color:#A6ACCD;font-style:italic;">\`tailwind.config.json\`</span><span style="color:#676E95;font-style:italic;"> file. </span></span>
<span class="line has-focus"><span style="color:#A6ACCD;">} </span></span></code></pre><div class="line-numbers-wrapper" aria-hidden="true"><span class="line-number">1</span><br><span class="line-number">2</span><br><span class="line-number">3</span><br><span class="line-number">4</span><br><span class="line-number">5</span><br><span class="line-number">6</span><br><span class="line-number">7</span><br><span class="line-number">8</span><br><span class="line-number">9</span><br><span class="line-number">10</span><br><span class="line-number">11</span><br><span class="line-number">12</span><br><span class="line-number">13</span><br></div></div><h4 id="background-color" tabindex="-1">Background Color <a class="header-anchor" href="#background-color" aria-label="Permalink to &quot;Background Color&quot;">​</a></h4><p>See the above color palette, We have only this palette and we use it to have background color for the Widgets which can have background color.</p><div class="language-dart line-numbers-mode"><button title="Copy Code" class="copy"></button><span class="lang">dart</span><pre class="shiki material-theme-palenight has-focused-lines"><code><span class="line has-focus"><span style="color:#676E95;font-style:italic;">/// Same palette can be used to access color like this </span></span>
<span class="line"><span style="color:#FFCB6B;">Container</span><span style="color:#A6ACCD;">(</span></span>
<span class="line"><span style="color:#A6ACCD;">    height</span><span style="color:#89DDFF;">:</span><span style="color:#A6ACCD;"> </span><span style="color:#F78C6C;">300</span><span style="color:#89DDFF;">,</span></span>
<span class="line"><span style="color:#A6ACCD;">    width</span><span style="color:#89DDFF;">:</span><span style="color:#A6ACCD;"> </span><span style="color:#F78C6C;">300</span><span style="color:#89DDFF;">,</span></span>
<span class="line has-focus"><span style="color:#A6ACCD;">    color</span><span style="color:#89DDFF;">:</span><span style="color:#A6ACCD;"> </span><span style="color:#FFCB6B;">TwColors</span><span style="color:#89DDFF;">.</span><span style="color:#82AAFF;">primaryColor</span><span style="color:#A6ACCD;">(context)</span><span style="color:#89DDFF;">,</span><span style="color:#A6ACCD;"> </span></span>
<span class="line"><span style="color:#A6ACCD;">)</span><span style="color:#89DDFF;">,</span></span>
<span class="line"></span>
<span class="line has-focus"><span style="color:#676E95;font-style:italic;">/// And extensions also return color from the same palette </span></span>
<span class="line"><span style="color:#FFCB6B;">TwContainer</span><span style="color:#A6ACCD;">()</span></span>
<span class="line"><span style="color:#89DDFF;">.</span><span style="color:#82AAFF;">square</span><span style="color:#A6ACCD;">(</span><span style="color:#F78C6C;">300</span><span style="color:#A6ACCD;">)</span></span>
<span class="line has-focus"><span style="color:#89DDFF;">.</span><span style="color:#82AAFF;">primaryColor</span><span style="color:#A6ACCD;">(context) </span></span>
<span class="line"><span style="color:#89DDFF;">.</span><span style="color:#82AAFF;">render</span><span style="color:#A6ACCD;">()</span><span style="color:#89DDFF;">,</span></span>
<span class="line"></span>
<span class="line has-focus"><span style="color:#676E95;font-style:italic;">/// --------------- OR --------------- /// </span></span>
<span class="line"></span>
<span class="line"><span style="color:#FFCB6B;">Container</span><span style="color:#A6ACCD;">()</span></span>
<span class="line"><span style="color:#89DDFF;">.</span><span style="color:#A6ACCD;">isContainer</span></span>
<span class="line"><span style="color:#89DDFF;">.</span><span style="color:#82AAFF;">width</span><span style="color:#A6ACCD;">(</span><span style="color:#F78C6C;">300</span><span style="color:#A6ACCD;">)</span></span>
<span class="line"><span style="color:#89DDFF;">.</span><span style="color:#82AAFF;">height</span><span style="color:#A6ACCD;">(</span><span style="color:#F78C6C;">300</span><span style="color:#A6ACCD;">)</span></span>
<span class="line has-focus"><span style="color:#89DDFF;">.</span><span style="color:#A6ACCD;">coolGray800 </span></span>
<span class="line"><span style="color:#89DDFF;">.</span><span style="color:#82AAFF;">render</span><span style="color:#A6ACCD;">()</span><span style="color:#89DDFF;">,</span></span></code></pre><div class="line-numbers-wrapper" aria-hidden="true"><span class="line-number">1</span><br><span class="line-number">2</span><br><span class="line-number">3</span><br><span class="line-number">4</span><br><span class="line-number">5</span><br><span class="line-number">6</span><br><span class="line-number">7</span><br><span class="line-number">8</span><br><span class="line-number">9</span><br><span class="line-number">10</span><br><span class="line-number">11</span><br><span class="line-number">12</span><br><span class="line-number">13</span><br><span class="line-number">14</span><br><span class="line-number">15</span><br><span class="line-number">16</span><br><span class="line-number">17</span><br><span class="line-number">18</span><br><span class="line-number">19</span><br><span class="line-number">20</span><br><span class="line-number">21</span><br></div></div><h4 id="text-color" tabindex="-1">Text Color <a class="header-anchor" href="#text-color" aria-label="Permalink to &quot;Text Color&quot;">​</a></h4><p>Same color palette is also used for text colors.</p><div class="language-dart line-numbers-mode"><button title="Copy Code" class="copy"></button><span class="lang">dart</span><pre class="shiki material-theme-palenight has-focused-lines"><code><span class="line has-focus"><span style="color:#676E95;font-style:italic;">/// Same palette can be used to access color like this </span></span>
<span class="line"><span style="color:#FFCB6B;">Text</span><span style="color:#A6ACCD;">(</span></span>
<span class="line"><span style="color:#A6ACCD;">    </span><span style="color:#C3E88D;">&quot;Tailwind CLI is awesome&quot;</span><span style="color:#89DDFF;">,</span></span>
<span class="line"><span style="color:#A6ACCD;">    style</span><span style="color:#89DDFF;">:</span><span style="color:#A6ACCD;"> </span><span style="color:#FFCB6B;">TextStyle</span><span style="color:#A6ACCD;">(</span></span>
<span class="line has-focus"><span style="color:#A6ACCD;">        color</span><span style="color:#89DDFF;">:</span><span style="color:#A6ACCD;"> </span><span style="color:#FFCB6B;">TwColors</span><span style="color:#89DDFF;">.</span><span style="color:#82AAFF;">primaryColor</span><span style="color:#A6ACCD;">(context) </span></span>
<span class="line"><span style="color:#A6ACCD;">    )</span><span style="color:#89DDFF;">,</span></span>
<span class="line"><span style="color:#A6ACCD;">)</span><span style="color:#89DDFF;">,</span></span>
<span class="line"></span>
<span class="line has-focus"><span style="color:#676E95;font-style:italic;">/// And extensions also return color from the same palette </span></span>
<span class="line"><span style="color:#FFCB6B;">TwText</span><span style="color:#A6ACCD;">(</span><span style="color:#C3E88D;">&quot;Flutter is awesome&quot;</span><span style="color:#A6ACCD;">)</span></span>
<span class="line"><span style="color:#89DDFF;">.</span><span style="color:#A6ACCD;">bold</span></span>
<span class="line has-focus"><span style="color:#89DDFF;">.</span><span style="color:#82AAFF;">primaryColor</span><span style="color:#A6ACCD;">(context) </span></span>
<span class="line"><span style="color:#89DDFF;">.</span><span style="color:#82AAFF;">render</span><span style="color:#A6ACCD;">()</span><span style="color:#89DDFF;">,</span></span>
<span class="line"></span>
<span class="line has-focus"><span style="color:#676E95;font-style:italic;">/// --------------- OR --------------- /// </span></span>
<span class="line"></span>
<span class="line"><span style="color:#C3E88D;">&quot;Tailwind is awesome&quot;</span></span>
<span class="line"><span style="color:#89DDFF;">.</span><span style="color:#A6ACCD;">isText</span></span>
<span class="line"><span style="color:#89DDFF;">.</span><span style="color:#A6ACCD;">textXl</span></span>
<span class="line has-focus"><span style="color:#89DDFF;">.</span><span style="color:#A6ACCD;">coolGray800 </span></span>
<span class="line"><span style="color:#89DDFF;">.</span><span style="color:#82AAFF;">render</span><span style="color:#A6ACCD;">()</span><span style="color:#89DDFF;">,</span></span></code></pre><div class="line-numbers-wrapper" aria-hidden="true"><span class="line-number">1</span><br><span class="line-number">2</span><br><span class="line-number">3</span><br><span class="line-number">4</span><br><span class="line-number">5</span><br><span class="line-number">6</span><br><span class="line-number">7</span><br><span class="line-number">8</span><br><span class="line-number">9</span><br><span class="line-number">10</span><br><span class="line-number">11</span><br><span class="line-number">12</span><br><span class="line-number">13</span><br><span class="line-number">14</span><br><span class="line-number">15</span><br><span class="line-number">16</span><br><span class="line-number">17</span><br><span class="line-number">18</span><br><span class="line-number">19</span><br><span class="line-number">20</span><br><span class="line-number">21</span><br></div></div><h4 id="border-color" tabindex="-1">Border Color <a class="header-anchor" href="#border-color" aria-label="Permalink to &quot;Border Color&quot;">​</a></h4><p>Guess what we are using same color palette for border colors.</p><div class="language-dart line-numbers-mode"><button title="Copy Code" class="copy"></button><span class="lang">dart</span><pre class="shiki material-theme-palenight has-focused-lines"><code><span class="line has-focus"><span style="color:#676E95;font-style:italic;">/// Same palette can be used to access color like this </span></span>
<span class="line"><span style="color:#FFCB6B;">Container</span><span style="color:#A6ACCD;">(</span></span>
<span class="line"><span style="color:#A6ACCD;">    decoration</span><span style="color:#89DDFF;">:</span><span style="color:#A6ACCD;"> </span><span style="color:#FFCB6B;">BoxDecoration</span><span style="color:#A6ACCD;">(</span></span>
<span class="line has-focus"><span style="color:#A6ACCD;">        border</span><span style="color:#89DDFF;">:</span><span style="color:#A6ACCD;"> </span><span style="color:#FFCB6B;">Border</span><span style="color:#89DDFF;">.</span><span style="color:#82AAFF;">all</span><span style="color:#A6ACCD;">(color</span><span style="color:#89DDFF;">:</span><span style="color:#A6ACCD;"> </span><span style="color:#FFCB6B;">TwColors</span><span style="color:#89DDFF;">.</span><span style="color:#82AAFF;">primaryColor</span><span style="color:#A6ACCD;">(context)</span><span style="color:#89DDFF;">,</span><span style="color:#A6ACCD;"> width</span><span style="color:#89DDFF;">:</span><span style="color:#A6ACCD;"> </span><span style="color:#F78C6C;">1</span><span style="color:#A6ACCD;">)</span><span style="color:#89DDFF;">,</span><span style="color:#A6ACCD;">  </span></span>
<span class="line"><span style="color:#A6ACCD;">    )</span><span style="color:#89DDFF;">,</span></span>
<span class="line"><span style="color:#A6ACCD;">)</span><span style="color:#89DDFF;">,</span></span>
<span class="line"></span>
<span class="line has-focus"><span style="color:#676E95;font-style:italic;">/// And extensions also return color from the same palette </span></span>
<span class="line"><span style="color:#FFCB6B;">TwContainer</span><span style="color:#A6ACCD;">()</span></span>
<span class="line"><span style="color:#89DDFF;">.</span><span style="color:#A6ACCD;">bold</span></span>
<span class="line has-focus"><span style="color:#89DDFF;">.</span><span style="color:#82AAFF;">borderPrimaryColor</span><span style="color:#A6ACCD;">(context) </span><span style="color:#676E95;font-style:italic;">// See border prefix </span></span>
<span class="line"><span style="color:#89DDFF;">.</span><span style="color:#82AAFF;">render</span><span style="color:#A6ACCD;">()</span><span style="color:#89DDFF;">,</span></span>
<span class="line"></span>
<span class="line has-focus"><span style="color:#676E95;font-style:italic;">/// --------------- OR --------------- /// </span></span>
<span class="line"></span>
<span class="line"><span style="color:#FFCB6B;">TwContainer</span><span style="color:#A6ACCD;">()</span></span>
<span class="line has-focus"><span style="color:#89DDFF;">.</span><span style="color:#A6ACCD;">borderCoolGray800 </span><span style="color:#676E95;font-style:italic;">// See border prefix </span></span>
<span class="line"><span style="color:#89DDFF;">.</span><span style="color:#82AAFF;">render</span><span style="color:#A6ACCD;">()</span><span style="color:#89DDFF;">,</span></span></code></pre><div class="line-numbers-wrapper" aria-hidden="true"><span class="line-number">1</span><br><span class="line-number">2</span><br><span class="line-number">3</span><br><span class="line-number">4</span><br><span class="line-number">5</span><br><span class="line-number">6</span><br><span class="line-number">7</span><br><span class="line-number">8</span><br><span class="line-number">9</span><br><span class="line-number">10</span><br><span class="line-number">11</span><br><span class="line-number">12</span><br><span class="line-number">13</span><br><span class="line-number">14</span><br><span class="line-number">15</span><br><span class="line-number">16</span><br><span class="line-number">17</span><br><span class="line-number">18</span><br></div></div><p><em>In the above exmple we are using <code>border&lt;ColorName&gt;</code> to get and apply color to the border for <code>Container</code>. In this we used <code>border</code> prefix just to separate the background color <code>extension</code> from the border color as they can be conflicted if the extension is with same name.</em></p><h3 id="sizes-spacers" tabindex="-1">Sizes / Spacers <a class="header-anchor" href="#sizes-spacers" aria-label="Permalink to &quot;Sizes / Spacers&quot;">​</a></h3><p>Unleash the Power of Consistent Sizing with the <code>TwSizes</code> Class - Your One-Stop Shop for All Widget Sizing Needs!</p><div class="language-dart line-numbers-mode"><button title="Copy Code" class="copy"></button><span class="lang">dart</span><pre class="shiki material-theme-palenight has-focused-lines"><code><span class="line has-focus"><span style="color:#89DDFF;">class</span><span style="color:#A6ACCD;"> </span><span style="color:#FFCB6B;">TwSizes</span><span style="color:#A6ACCD;"> { </span></span>
<span class="line has-focus"><span style="color:#A6ACCD;">    </span><span style="color:#C792EA;">static</span><span style="color:#A6ACCD;"> </span><span style="color:#C792EA;">const</span><span style="color:#A6ACCD;"> </span><span style="color:#FFCB6B;">double</span><span style="color:#A6ACCD;"> spacer </span><span style="color:#89DDFF;">=</span><span style="color:#A6ACCD;"> </span><span style="color:#F78C6C;">16.0</span><span style="color:#89DDFF;">;</span><span style="color:#A6ACCD;">  </span></span>
<span class="line has-focus"><span style="color:#A6ACCD;">    </span><span style="color:#C792EA;">static</span><span style="color:#A6ACCD;"> </span><span style="color:#C792EA;">const</span><span style="color:#A6ACCD;"> </span><span style="color:#FFCB6B;">double</span><span style="color:#A6ACCD;"> spacer0 </span><span style="color:#89DDFF;">=</span><span style="color:#A6ACCD;"> spacer </span><span style="color:#89DDFF;">*</span><span style="color:#A6ACCD;"> </span><span style="color:#F78C6C;">0</span><span style="color:#89DDFF;">;</span><span style="color:#A6ACCD;"> </span></span>
<span class="line"><span style="color:#A6ACCD;">    </span><span style="color:#C792EA;">static</span><span style="color:#A6ACCD;"> </span><span style="color:#C792EA;">const</span><span style="color:#A6ACCD;"> </span><span style="color:#FFCB6B;">double</span><span style="color:#A6ACCD;"> spacer1 </span><span style="color:#89DDFF;">=</span><span style="color:#A6ACCD;"> spacer </span><span style="color:#89DDFF;">*</span><span style="color:#A6ACCD;"> </span><span style="color:#F78C6C;">0.25</span><span style="color:#89DDFF;">;</span></span>
<span class="line"><span style="color:#A6ACCD;">    </span><span style="color:#C792EA;">static</span><span style="color:#A6ACCD;"> </span><span style="color:#C792EA;">const</span><span style="color:#A6ACCD;"> </span><span style="color:#FFCB6B;">double</span><span style="color:#A6ACCD;"> spacer2 </span><span style="color:#89DDFF;">=</span><span style="color:#A6ACCD;"> spacer </span><span style="color:#89DDFF;">*</span><span style="color:#A6ACCD;"> </span><span style="color:#F78C6C;">0.5</span><span style="color:#89DDFF;">;</span></span>
<span class="line has-focus"><span style="color:#A6ACCD;">    </span><span style="color:#C792EA;">static</span><span style="color:#A6ACCD;"> </span><span style="color:#C792EA;">const</span><span style="color:#A6ACCD;"> </span><span style="color:#FFCB6B;">double</span><span style="color:#A6ACCD;"> spacer4 </span><span style="color:#89DDFF;">=</span><span style="color:#A6ACCD;"> spacer </span><span style="color:#89DDFF;">*</span><span style="color:#A6ACCD;"> </span><span style="color:#F78C6C;">1.0</span><span style="color:#89DDFF;">;</span><span style="color:#A6ACCD;"> </span></span>
<span class="line has-focus"><span style="color:#A6ACCD;">    </span><span style="color:#676E95;font-style:italic;">// ------ Other spacers ------ // </span></span>
<span class="line"><span style="color:#A6ACCD;">    </span><span style="color:#C792EA;">static</span><span style="color:#A6ACCD;"> </span><span style="color:#C792EA;">const</span><span style="color:#A6ACCD;"> </span><span style="color:#FFCB6B;">double</span><span style="color:#A6ACCD;"> spacer20 </span><span style="color:#89DDFF;">=</span><span style="color:#A6ACCD;"> spacer </span><span style="color:#89DDFF;">*</span><span style="color:#A6ACCD;"> </span><span style="color:#F78C6C;">5</span><span style="color:#89DDFF;">;</span></span>
<span class="line has-focus"><span style="color:#A6ACCD;">    </span><span style="color:#676E95;font-style:italic;">// ------ Other spacers ------ // </span></span>
<span class="line has-focus"><span style="color:#A6ACCD;">    </span><span style="color:#C792EA;">static</span><span style="color:#A6ACCD;"> </span><span style="color:#C792EA;">const</span><span style="color:#A6ACCD;"> </span><span style="color:#FFCB6B;">double</span><span style="color:#A6ACCD;"> spacer24 </span><span style="color:#89DDFF;">=</span><span style="color:#A6ACCD;"> spacer </span><span style="color:#89DDFF;">*</span><span style="color:#A6ACCD;"> </span><span style="color:#F78C6C;">6</span><span style="color:#89DDFF;">;</span><span style="color:#A6ACCD;"> </span></span>
<span class="line has-focus"><span style="color:#A6ACCD;">} </span></span></code></pre><div class="line-numbers-wrapper" aria-hidden="true"><span class="line-number">1</span><br><span class="line-number">2</span><br><span class="line-number">3</span><br><span class="line-number">4</span><br><span class="line-number">5</span><br><span class="line-number">6</span><br><span class="line-number">7</span><br><span class="line-number">8</span><br><span class="line-number">9</span><br><span class="line-number">10</span><br><span class="line-number">11</span><br></div></div><p><em>In the above example you can see there are a lot of sizes and spacings are available to be used anywhere in the app.</em></p><h4 id="paddings" tabindex="-1">Paddings <a class="header-anchor" href="#paddings" aria-label="Permalink to &quot;Paddings&quot;">​</a></h4><div class="language-dart line-numbers-mode"><button title="Copy Code" class="copy"></button><span class="lang">dart</span><pre class="shiki material-theme-palenight has-focused-lines"><code><span class="line"><span style="color:#676E95;font-style:italic;">/// Use </span><span style="color:#A6ACCD;font-style:italic;">\`TwSizes\`</span><span style="color:#676E95;font-style:italic;"> as Padding value</span></span>
<span class="line"><span style="color:#FFCB6B;">Container</span><span style="color:#A6ACCD;">(</span></span>
<span class="line has-focus"><span style="color:#A6ACCD;">    padding</span><span style="color:#89DDFF;">:</span><span style="color:#A6ACCD;"> </span><span style="color:#FFCB6B;">EdgeInsets</span><span style="color:#89DDFF;">.</span><span style="color:#82AAFF;">all</span><span style="color:#A6ACCD;">(</span><span style="color:#FFCB6B;">TwSizes</span><span style="color:#89DDFF;">.</span><span style="color:#A6ACCD;">spacer1)</span><span style="color:#89DDFF;">,</span><span style="color:#A6ACCD;"> </span><span style="color:#676E95;font-style:italic;">// See the magic here </span></span>
<span class="line"><span style="color:#A6ACCD;">)</span><span style="color:#89DDFF;">,</span></span>
<span class="line"></span>
<span class="line"><span style="color:#676E95;font-style:italic;">/// Other way</span></span>
<span class="line"><span style="color:#FFCB6B;">TwContainer</span><span style="color:#A6ACCD;">()</span></span>
<span class="line has-focus"><span style="color:#89DDFF;">.</span><span style="color:#A6ACCD;">p1  </span><span style="color:#676E95;font-style:italic;">// See the magic here </span></span>
<span class="line"><span style="color:#89DDFF;">.</span><span style="color:#82AAFF;">render</span><span style="color:#A6ACCD;">()</span><span style="color:#89DDFF;">,</span></span>
<span class="line"></span>
<span class="line"><span style="color:#676E95;font-style:italic;">/// And another way</span></span>
<span class="line"><span style="color:#FFCB6B;">TwContainer</span><span style="color:#A6ACCD;">()</span></span>
<span class="line has-focus"><span style="color:#89DDFF;">.</span><span style="color:#82AAFF;">px</span><span style="color:#A6ACCD;">(</span><span style="color:#FFCB6B;">TwSizes</span><span style="color:#89DDFF;">.</span><span style="color:#A6ACCD;">spacer2) </span><span style="color:#676E95;font-style:italic;">// See the magic here </span></span>
<span class="line has-focus"><span style="color:#89DDFF;">.</span><span style="color:#82AAFF;">py</span><span style="color:#A6ACCD;">(</span><span style="color:#FFCB6B;">TwSizes</span><span style="color:#89DDFF;">.</span><span style="color:#A6ACCD;">spacer4) </span><span style="color:#676E95;font-style:italic;">// See the magic here </span></span>
<span class="line"><span style="color:#89DDFF;">.</span><span style="color:#82AAFF;">render</span><span style="color:#A6ACCD;">()</span><span style="color:#89DDFF;">,</span></span></code></pre><div class="line-numbers-wrapper" aria-hidden="true"><span class="line-number">1</span><br><span class="line-number">2</span><br><span class="line-number">3</span><br><span class="line-number">4</span><br><span class="line-number">5</span><br><span class="line-number">6</span><br><span class="line-number">7</span><br><span class="line-number">8</span><br><span class="line-number">9</span><br><span class="line-number">10</span><br><span class="line-number">11</span><br><span class="line-number">12</span><br><span class="line-number">13</span><br><span class="line-number">14</span><br><span class="line-number">15</span><br></div></div><h4 id="margins" tabindex="-1">Margins <a class="header-anchor" href="#margins" aria-label="Permalink to &quot;Margins&quot;">​</a></h4><div class="language-dart line-numbers-mode"><button title="Copy Code" class="copy"></button><span class="lang">dart</span><pre class="shiki material-theme-palenight has-focused-lines"><code><span class="line"><span style="color:#676E95;font-style:italic;">/// Use </span><span style="color:#A6ACCD;font-style:italic;">\`TwSizes\`</span><span style="color:#676E95;font-style:italic;"> as Margin value</span></span>
<span class="line"><span style="color:#FFCB6B;">Container</span><span style="color:#A6ACCD;">(</span></span>
<span class="line has-focus"><span style="color:#A6ACCD;">    margin</span><span style="color:#89DDFF;">:</span><span style="color:#A6ACCD;"> </span><span style="color:#FFCB6B;">EdgeInsets</span><span style="color:#89DDFF;">.</span><span style="color:#82AAFF;">all</span><span style="color:#A6ACCD;">(</span><span style="color:#FFCB6B;">TwSizes</span><span style="color:#89DDFF;">.</span><span style="color:#A6ACCD;">spacer1)</span><span style="color:#89DDFF;">,</span><span style="color:#A6ACCD;"> </span><span style="color:#676E95;font-style:italic;">// See the magic here </span></span>
<span class="line"><span style="color:#A6ACCD;">)</span><span style="color:#89DDFF;">,</span></span>
<span class="line"></span>
<span class="line"><span style="color:#676E95;font-style:italic;">/// Other way</span></span>
<span class="line"><span style="color:#FFCB6B;">TwContainer</span><span style="color:#A6ACCD;">()</span></span>
<span class="line has-focus"><span style="color:#89DDFF;">.</span><span style="color:#A6ACCD;">m1  </span><span style="color:#676E95;font-style:italic;">// See the magic here </span></span>
<span class="line"><span style="color:#89DDFF;">.</span><span style="color:#82AAFF;">render</span><span style="color:#A6ACCD;">()</span><span style="color:#89DDFF;">,</span></span>
<span class="line"></span>
<span class="line"><span style="color:#676E95;font-style:italic;">/// And another way</span></span>
<span class="line"><span style="color:#FFCB6B;">TwContainer</span><span style="color:#A6ACCD;">()</span></span>
<span class="line has-focus"><span style="color:#89DDFF;">.</span><span style="color:#82AAFF;">mx</span><span style="color:#A6ACCD;">(</span><span style="color:#FFCB6B;">TwSizes</span><span style="color:#89DDFF;">.</span><span style="color:#A6ACCD;">spacer2) </span><span style="color:#676E95;font-style:italic;">// See the magic here </span></span>
<span class="line has-focus"><span style="color:#89DDFF;">.</span><span style="color:#82AAFF;">my</span><span style="color:#A6ACCD;">(</span><span style="color:#FFCB6B;">TwSizes</span><span style="color:#89DDFF;">.</span><span style="color:#A6ACCD;">spacer4) </span><span style="color:#676E95;font-style:italic;">// See the magic here </span></span>
<span class="line"><span style="color:#89DDFF;">.</span><span style="color:#82AAFF;">render</span><span style="color:#A6ACCD;">()</span><span style="color:#89DDFF;">,</span></span></code></pre><div class="line-numbers-wrapper" aria-hidden="true"><span class="line-number">1</span><br><span class="line-number">2</span><br><span class="line-number">3</span><br><span class="line-number">4</span><br><span class="line-number">5</span><br><span class="line-number">6</span><br><span class="line-number">7</span><br><span class="line-number">8</span><br><span class="line-number">9</span><br><span class="line-number">10</span><br><span class="line-number">11</span><br><span class="line-number">12</span><br><span class="line-number">13</span><br><span class="line-number">14</span><br><span class="line-number">15</span><br></div></div>`,25),e=[o];function r(c,t,C,y,i,A){return n(),a("div",null,e)}const b=s(p,[["render",r]]);export{F as __pageData,b as default};