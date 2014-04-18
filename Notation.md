# Notation for universal key scores

This is an ASCII system to represent relative chords, indicating
the degree and quality. It is based in the concep of
[universal key](http://en.wikipedia.org/wiki/Universal_key).

**Limitations**:

* Modulation is not expected inside a song.

## Scores

Score example from Fado Alberto:

```
4/4 m
[:i             | V7            |               | i              ]
[ I7            | iv            | VII7          | III            ]
[ VI  / /  II-7 | V7  /  / ii*7 | VI9 ii% V7  / | i             :] D.C.
                                                | i   V7  i  /   ] Fine
```

## Grammar for chords

Grammar syntax as defined in [EBNF W3C XML](http://www.w3.org/TR/REC-xml/#sec-notation).

```
/* Flat and sharp signs */
    ALT    ::= [@#]

/* Scale degrees */
    MAJOR  ::= "I" | "II" | "III" | "IV" | "V" | "VI" | "VII"
    MINOR  ::= "i" | "ii" | "iii" | "iv" | "v" | "vi" | "vii"

/* Inversions */
    INV3   ::= [abc]
    INV4   ::= [abcd]

/* Qualities and sevenths */
    AUG    ::= "+"	/* augmented */
    DIM    ::= "*"	/* diminished */
    FLAT   ::= "-"	/* flat 5th */
    HALF   ::= "%"	/* half diminished */
    M7     ::= "^"	/* Major 7th */
    m7     ::= "7"	/* Minor 7th */

/* Editions (added or omited notes) */
    ADD    ::= "&"? ("@"? [29]) | ("#"? "4") | ([@#]? "6")
    OMIT   ::= "|" ("3" | "5" | "35")
    EDIT   ::= (ADD OMIT?) | OMIT

/* Chords */

    Chord  ::= ALT? ((Triad | Seventh) EDIT?) | Suspended | Linear

    Triad  ::= (MajorTriad | MinorTriad) INV3?
    MajorTriad ::= MAJOR AUG?
    MinorTriad ::= MINOR DIM?

    Seventh ::= (MajorSeventh | MinorSevent) INV4?
    MajorSeventh ::= MAJOR ((AUG? (M7 | m7)) | (FLAT m7?))
    MinorSeventh ::= MINOR ((DIM? m7) | M7 | (HALF m7?))

    Suspended ::= (Triad | Seventh) ((">" [2469]+) | ("<" [79]+))+

    Linear ::= MAJOR ";"
```

## Examples

### Harmonized scales

Major scale in ASCII notation:

```
I    ii    iii    IV    V    vi    vii*

I^   ii7   iii7   IV^   V7   vi7   vii%7
```

Major scale using Unicode characters:

```
I    ii    iii    IV    V    vi    vii°

I∆   ii⁷   iii⁷   IV∆   V⁷   vi⁷   viiø⁷
```

Minor scale in ASCII notation:

```
i    ii*   III    iv    V    VI    VII
           III+                   #vii*

i^   ii%7  III^   iv7   V7   VI^   VII7
           III+^                  #vii*7
```

Minor scale using Unicode characters:

```
i    ii°   III    iv    V    VI    VII
           III+                   ♯vii°

i∆   iiø⁷  III∆   iv⁷   V⁷   VI∆   VII⁷
           III⁺∆                  ♯vii°⁷
```

### Chords

|ASCII chord	|Intervals	|Common name		|Unicode chord
|-------------------|-------------------|---------------------------------------|------------------
|`I`	|M3P5	|Major		|I
|`ii`	|m3P5	|Minor		|ii
|`vii*`	|m3d5	|Diminished		|vii°
|`III+`	|M3A5	|Augmented		|III♯⁵
|`IV^`	|M3P5M7	|Major 7th		|IV∆
|`V7`	|M3P5m7	|Dominant 7th		|V⁷
|`V+7`	|M3A5m7	|Augmented 7th		|V⁷♯⁵
|`III+^`	|M3A5M7	|Augmented major 7th	|III∆♯⁵
|`II- II-7`	|M3d5m7	|Dominant seventh flat five	|II⁷♭⁵
|`i^`	|m3P5M7	|Minor major 7th		|i∆
|`ii7`	|m3P5m7	|Minor 7th		|ii⁷
|`ii% ii%7`	|m3d5m7	|Half-diminished 7th	|iiø iiø⁷
|`vii*7`	|m3d5d7	|Diminished 7th		|vii°⁷
|`I6 (vi7b)`	|M3P5M6	|Major 6th		|I⁶
|`ii6 (vii%b)`	|m3P5M6	|Minor 6th		|ii⁶
|`I>4`	|P4P5	|Suspended 4th		|Vsus⁴
|`V7>4`	|P4P5m7	|Dominant suspended 4th	|V⁷sus⁴
|`V>46 (Ic)`	|P4M6	|Cadential 6/4 		|Ic (_enharmonic_)
|`VI; (VI-7)`	|M3A4A6	|Augmented (french) sixth	|VI⁷♭⁵ (_enharmonic_)
|`V7>6 (V+7)`	|M3m6m7	|Suspended 5th		|V⁷♯⁵ (_enharmonic_)

<!--
|`i@6 (VI^b)`	|m3P5m6	|Minor minor 6th		|i♭⁶
|`@IIb`	|m3m6	|Neapolitan sixth		|
|`VI,`	|M3A6	|Italian sixth		|
|`VI: (VI#6)`	|M3P5A6	|German sixth		|
|`#iv. (VI7c)`	|d3d5d7	|Double diminished (linear 4/2)	|
|`V9 (V7&9)`	|M3P5M9	|Added 9th		|
|`I69 (I&69)`	|M3P5M6M9	|Added 6th and 9th		|
|`V7&6`	|	|		|
|`V9&6 (V7&69)`	|	|		|
-->

<!--
vim:syntax=markdown:tabstop=20
-->
