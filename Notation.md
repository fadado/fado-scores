# Notation for universal key scores

This is an ASCII system to represent relative chords, indicating
the degree and quality. It is based in the concep of
[universal key](http://en.wikipedia.org/wiki/Universal_key).

**Limitations**:

* Modulation is not expected inside a song.

## Scores

The score notation _should_ be clear if you know the basics of music notation.
Score example from Fado Alberto:

```
4/4 m
[ i             | V7            |       /       | i              ]
[ I7            | iv            | VII7          | III            ]
[ VI            | V7            |       /       | i             :] D.C.
~2                                              | i   V7  i  /   ]
```


## Examples

### Harmonized scales

Major scale in ASCII notation:

```
I    ii    iii    IV    V    vi    vii*

I^   ii7   iii7   IV^   V7   vi7   vii%
```

Major scale using Unicode characters:

```
I    ii    iii    IV    V    vi    vii°

I∆   ii⁷   iii⁷   IV∆   V⁷   vi⁷   viiø
```

Minor scale in ASCII notation:

```
i    ii*   III    iv    V    VI    VII
           III+                   #vii*

i^   ii%   III^   iv7   V7   VI^   VII7
           III+^                  #vii*7
```

Minor scale using Unicode characters:

```
i    ii°   III    iv    V    VI    VII
           III+                   ♯vii°

i∆   iiø   III∆   iv⁷   V⁷   VI∆   VII⁷
           III⁺∆                  ♯vii°⁷
```

### Chords

|ASCII chord	|Intervals	|Common name		|Unicode chord
|-------------------|-------------------|---------------------------------------|------------------
|`I`	|M3P5	|Major		|I
|`ii`	|m3P5	|Minor		|ii
|`vii*`	|m3d5	|Diminished		|vii°
|`III+`	|M3A5	|Augmented		|III♯⁵
|`@IIb`	|m3m6	|Neapolitan sixth		|♭II/3
|`IV^`	|M3P5M7	|Major 7th		|IV∆
|`V7`	|M3P5m7	|Dominant 7th		|V⁷
|`V+7`	|M3A5m7	|Augmented 7th		|V⁷♯⁵
|`III+^`	|M3A5M7	|Augmented major 7th	|III∆♯⁵
|`VI%`	|M3d5m7	|Dominant seventh flat five	|VI⁷♭⁵
|`II4+`	|M3A4A6	|Augmented (french) sixth	|II⁷♭⁵ (variant)
|`i^`	|m3P5M7	|Minor major 7th		|i∆
|`ii7`	|m3P5m7	|Minor 7th		|ii⁷
|`ii%`	|m3d5m7	|Half-diminished 7th	|iiø
|`vii*7`	|m3d5d7	|Diminished 7th		|vii°⁷
|`VI6+`	|M3P5A6	|Augmented (german) sixth	|VI⁷ (variant)
|`VI3*`	|d3d5d7	|Double diminished (linear 4/2)	|VI⁷/5 (variant)
|`I6`	|M3P5M6	|Major 6th		|I⁶
|`ii6`	|m3P5M6	|Minor 6th		|ii⁶
|`I>4`	|P4P5	|Suspended 4th		|Vsus⁴
|`V7>4`	|P4P5m7	|Dominant suspended 4th	|V⁷sus⁴
|`V>46`	|P4M6	|Cadential 6/4 		|Ic (variant)
|`V7>6`	|M3m6m7	|Suspended 6th		|V⁷♯⁵ (variant)

<!--
|`V9 (V7&9)`	|M3P5M9	|Added 9th		|
|`i@6 (VI^b)`	|m3P5m6	|Minor minor 6th		|i♭⁶
|`I69 (I&69)`	|M3P5M6M9	|Added 6th and 9th		|
|`V7&6`	|	|		|
|`V9&6 (V7&69)`	|	|		|
-->

<!--
vim:syntax=markdown:tabstop=20
-->
