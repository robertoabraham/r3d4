| SOKOBAN - MC 2020
| Sprites from: https://kenney.nl/assets/
| Levels  from: https://github.com/begoon/sokoban-maps
|
|MEM 16384
|SCR 1200 675

^r3/lib/gui.r3
^r3/lib/sys.r3
^r3/lib/mem.r3
^r3/lib/print.r3
^r3/lib/sprite.r3
^r3/lib/xfb.r3
^r3/lib/fontr.r3
^r3/util/loadimg.r3
^media/rft/archivoblackregular.rft

| sprites
#spritesheet
|        ground wall box boxgoal groundgoal
#sprites 89     98   6   9       102

|       playerup playerdn playerri playerle
#player 55       52       78       81

#playerx #playery

#playerdir 0
#UP 0 #DN 1 #RI 2 #LE 3

#FLOOR 0 #WALL 1 #BOX 2 #BOXGOAL 3 #GOAL 4

|  -- Format of the compressed levels ( RLE style )
|  -- Prolog
|         char size_x
|         char size_y
|  -- Elements
|         counter (bits)
|                 0                - 1 symbol
|                 1 D3 D2 D1       - 2+D3*4+D2*2+D1 symbols (9 max)
|         char (bits)
|                 0 0              - an empty space              -> 0
|                 0 1              - the wall                    -> 1
|                 1 0              - the box                     -> 2
|                 1 1 1            - the box already in place    -> 3
|                 1 1 0            - the goal for a box          -> 4
|  -- Epilog
|         char man_x
|         char man_y

#xmap #ymap #scale

#NMAPS 60

#nboxes 0


#lvl1z ( 22 11 162 223 56 50 31 56 42 3 230 18 192 165 242 131 2 129 3 228 18 130 37 6 205 100 34 81 172 17 161 10 5 229 17 177 20 130 41 130 49 160 225 44 24 209 207 128 12 8 ) 

#lvl2z ( 14 10 246 88 12 104 13 148 198 128 133 2 130 24 208 21 76 16 198 194 24 33 141 1 6 4 57 16 160 129 128 133 2 8 32 96 52 27 12 30 202 7 4 ) 

#lvl3z ( 17 10 227 159 14 7 194 17 66 31 8 80 35 224 133 4 12 30 132 8 166 180 16 133 2 130 89 212 40 20 144 214 131 223 124 14 1 ) 

#lvl4z ( 22 13 242 206 124 176 193 88 201 236 176 86 50 26 12 8 41 43 25 8 152 168 16 48 86 50 24 21 136 24 43 25 8 136 20 16 94 203 2 6 195 161 144 143 116 52 40 33 242 66 34 49 64 124 144 200 100 135 201 61 242 128 8 10 ) 

#lvl5z ( 17 13 226 223 36 50 91 193 5 67 1 224 216 135 164 75 36 53 160 132 40 21 53 168 66 33 8 53 160 133 64 160 35 216 20 16 248 66 10 3 228 162 16 124 128 208 124 131 16 14 7 ) 

#lvl6z ( 12 11 198 9 65 141 1 16 137 99 65 44 144 198 178 33 12 104 8 33 8 99 74 8 66 208 129 80 25 12 8 132 12 132 40 20 6 67 4 50 25 61 9 1 ) 

#lvl7z ( 13 12 210 216 53 146 144 96 132 68 33 161 97 12 10 9 100 164 90 169 10 9 68 98 8 65 4 39 16 104 150 113 4 68 8 51 136 48 74 45 20 248 5 2 ) 

#lvl8z ( 16 17 130 159 36 48 123 12 6 133 34 8 24 8 68 32 96 80 24 12 8 40 13 20 132 65 130 145 8 40 32 160 134 72 104 64 163 33 18 192 168 65 4 8 166 15 96 150 9 120 56 30 14 7 131 152 240 115 30 14 99 199 56 0 1 6 ) 

#lvl9z ( 17 18 240 107 224 48 78 56 91 4 227 129 194 113 192 193 12 19 142 16 136 96 156 108 148 115 97 19 8 108 182 4 16 214 66 130 144 201 12 10 5 66 129 13 68 65 11 108 33 80 124 164 75 228 134 3 229 6 3 229 6 3 229 20 216 1 10 ) 

#lvl10z ( 21 20 242 202 124 147 24 15 146 29 15 146 24 41 18 193 44 22 137 104 34 17 76 147 3 65 4 69 36 65 72 107 75 4 198 133 1 189 8 82 17 16 136 27 212 200 96 84 27 198 3 33 8 32 129 188 96 35 81 45 227 1 144 192 130 128 222 48 74 8 136 32 181 160 131 2 192 240 65 19 9 129 224 131 161 7 130 61 7 131 228 7 143 105 160 2 5 ) 

#lvl11z ( 19 15 240 83 224 164 24 15 18 193 42 7 72 112 80 28 33 129 8 161 16 224 96 42 27 14 4 16 132 64 137 108 50 32 96 33 15 104 48 68 12 150 136 66 242 22 162 88 61 140 35 17 78 134 113 99 228 134 241 242 77 124 144 7 3 ) 

#lvl12z ( 13 16 131 218 11 179 151 103 52 22 118 118 118 52 23 103 103 103 52 22 118 118 118 52 23 103 103 103 52 75 36 184 25 13 24 141 124 130 16 130 8 32 132 161 4 16 66 16 80 65 4 17 128 200 130 144 192 96 182 3 5 50 82 0 6 13 ) 

#lvl13z ( 20 13 163 223 37 146 24 45 146 92 12 6 75 96 136 20 12 6 9 194 16 96 68 40 65 5 139 8 96 132 21 1 162 112 132 35 66 4 16 88 176 134 136 96 133 4 39 8 66 16 200 96 40 177 97 40 138 5 34 129 78 4 21 6 52 67 1 6 67 71 164 91 229 128 7 4 ) 

#lvl14z ( 17 13 247 80 124 176 130 8 198 194 8 48 32 130 8 192 65 6 68 20 144 137 65 5 4 20 179 161 6 68 20 16 206 132 75 48 66 25 208 216 68 34 25 216 201 8 134 113 162 219 37 224 216 124 26 192 7 4 ) 

#lvl15z ( 17 17 210 159 5 48 31 33 128 192 124 48 32 129 210 80 84 148 208 96 80 66 164 52 24 12 136 16 141 6 3 130 20 136 69 42 27 8 33 27 196 25 8 48 41 206 193 17 108 6 241 144 192 100 148 107 1 17 64 96 58 24 13 135 76 100 62 73 110 128 6 6 ) 

#lvl16z ( 14 15 183 195 36 60 26 12 20 192 66 130 152 12 6 8 130 145 24 37 128 170 33 128 193 12 8 33 8 33 65 8 132 49 6 2 161 80 22 34 89 20 104 88 192 104 44 243 140 4 68 13 227 1 131 216 12 7 193 79 0 3 5 ) 

#lvl17z ( 18 16 211 91 53 176 216 108 33 4 13 134 32 100 244 17 46 104 100 32 200 179 66 8 32 137 115 89 44 148 137 65 82 192 84 134 5 1 4 24 16 154 2 20 32 131 34 8 75 16 32 139 108 82 16 108 148 75 33 7 67 97 144 233 204 7 203 41 0 10 2 ) 

#lvl18z ( 22 13 195 217 124 6 6 130 25 15 128 130 218 27 49 16 206 34 153 33 130 25 212 217 104 66 25 212 32 96 80 67 100 97 8 34 17 12 22 169 81 10 3 33 16 137 96 52 66 132 64 131 1 146 32 65 8 16 161 6 3 231 134 15 121 128 249 229 32 15 2 ) 

#lvl19z ( 28 20 227 31 60 160 209 79 156 90 20 135 206 12 144 209 79 150 16 161 130 26 15 150 25 12 22 131 229 132 24 130 160 131 229 134 4 16 148 16 124 176 131 34 128 130 15 150 16 96 40 200 65 242 136 69 50 16 65 242 131 2 130 208 65 20 233 13 10 197 4 176 123 4 161 4 66 6 75 208 217 14 6 8 96 55 161 21 81 138 134 66 208 180 180 67 229 134 177 16 193 238 50 86 48 24 15 148 91 4 48 83 231 20 128 12 1 ) 

#lvl20z ( 20 20 211 217 120 63 152 225 43 22 44 88 198 56 25 63 28 12 8 32 131 179 177 179 81 172 20 200 104 134 3 4 52 32 104 33 8 65 128 162 37 18 169 37 10 4 20 132 32 130 16 192 66 16 232 80 134 69 74 165 67 5 176 67 33 160 192 100 40 67 33 4 69 1 144 200 66 6 5 65 146 80 68 64 192 132 182 16 104 33 8 116 35 144 120 62 3 199 178 200 6 4 ) 

#lvl21z ( 16 14 147 211 129 141 1 144 224 99 96 112 49 160 48 83 38 176 24 33 128 249 33 128 192 96 134 3 5 162 24 41 18 192 160 180 24 33 4 40 20 4 40 33 129 64 164 50 98 33 26 208 104 62 12 116 2 10 ) 

#lvl22z ( 22 20 242 74 116 246 88 45 144 208 96 48 40 12 144 192 66 8 40 16 33 5 33 130 20 20 134 2 20 136 17 44 158 202 33 6 4 17 128 230 33 24 8 50 24 14 104 65 128 193 8 132 17 120 192 96 32 224 179 4 12 4 16 132 32 230 48 24 12 8 35 1 204 66 48 16 164 48 66 173 128 192 66 8 82 16 80 32 140 16 131 98 8 32 164 148 24 49 10 133 65 7 194 53 4 106 10 240 29 12 158 195 165 190 0 11 4 ) 

#lvl23z ( 25 14 211 95 60 48 24 41 243 2 17 64 193 14 156 192 96 50 123 90 2 17 64 192 140 6 72 107 16 108 42 3 132 49 139 80 140 4 42 10 130 25 208 67 1 64 168 12 6 72 107 8 66 54 47 117 128 196 84 7 203 8 70 3 2 62 88 96 48 25 15 150 83 5 190 113 79 144 0 5 7 ) 

#lvl24z ( 21 19 147 211 228 7 181 60 22 44 107 24 15 7 180 64 240 108 105 96 166 79 96 64 200 100 54 41 16 80 32 100 48 26 12 8 35 1 146 17 108 134 3 1 144 133 97 146 144 96 134 4 100 34 24 12 6 3 68 42 90 12 16 130 21 8 24 12 6 66 45 160 136 65 16 136 104 40 131 2 129 5 33 160 131 2 51 64 100 52 75 2 194 220 33 128 192 96 62 65 233 160 5 15 ) 

#lvl25z ( 23 17 243 10 124 179 24 45 163 93 12 134 131 130 8 66 8 32 208 96 164 40 13 140 104 56 32 65 16 177 99 68 42 148 16 66 22 44 104 54 26 41 105 104 33 73 140 5 139 107 52 58 22 45 14 6 130 138 149 131 66 41 6 234 8 157 8 52 43 12 132 78 132 25 33 16 217 44 232 70 43 24 53 224 208 96 54 122 104 166 192 17 9 ) 

#lvl26z ( 15 15 247 3 161 192 233 76 144 138 65 128 201 8 34 26 12 132 76 20 17 25 12 4 66 20 6 67 1 16 192 135 48 76 17 128 131 36 50 86 32 131 33 6 48 98 12 132 17 12 226 45 10 3 56 217 12 150 225 109 0 4 4 ) 

#lvl27z ( 23 13 30 243 129 157 33 160 201 44 144 222 129 66 8 33 3 33 204 96 80 24 20 6 67 152 192 96 32 130 33 131 208 160 64 131 4 176 27 10 133 8 68 50 17 12 138 130 20 10 66 8 48 66 37 6 11 81 4 16 132 86 41 21 132 16 168 80 161 200 35 90 33 194 93 49 240 0 10 11 ) 

#lvl28z ( 15 17 179 94 12 6 3 193 10 67 164 162 16 104 164 40 8 134 67 161 130 24 8 65 82 16 48 17 16 48 24 17 128 168 20 133 64 68 48 68 100 136 74 34 128 192 96 66 27 41 10 8 96 42 24 208 201 72 99 90 216 8 221 13 6 180 145 141 30 195 0 6 1 ) 

#lvl29z ( 24 11 243 75 124 24 137 100 166 75 104 148 32 160 66 216 33 5 5 66 6 72 107 73 16 65 64 164 42 88 192 136 65 146 85 8 48 67 90 130 37 160 209 13 106 8 134 5 4 168 67 27 24 20 6 10 70 52 25 37 208 249 238 32 19 9 ) 

#lvl30z ( 14 20 22 248 100 214 66 16 150 67 33 10 136 129 146 17 76 134 9 65 128 137 96 50 24 8 134 66 34 161 3 33 144 130 16 244 25 12 4 25 21 50 16 96 86 40 8 134 75 68 35 211 4 181 136 80 33 13 226 34 48 67 24 70 33 64 132 55 148 134 9 96 244 138 124 8 6 ) 

#lvl31z ( 15 12 26 240 96 48 91 36 48 24 12 233 65 129 24 12 232 8 33 3 16 157 1 6 4 96 51 131 16 100 33 122 86 136 33 44 6 8 129 144 140 96 134 32 112 56 67 135 32 13 9 ) 

#lvl32z ( 18 16 130 159 44 48 123 100 48 67 1 144 216 96 68 32 164 166 2 160 80 16 130 48 83 2 132 20 21 144 192 96 32 201 52 16 133 66 129 66 45 8 32 81 128 192 100 134 9 96 149 3 65 128 214 176 209 78 106 112 53 169 240 206 135 201 12 227 229 22 248 0 8 2 ) 

#lvl33z ( 13 15 194 155 45 128 209 13 136 201 8 80 66 37 4 32 129 10 2 41 16 200 140 6 177 65 3 1 172 100 70 3 90 8 132 32 206 4 41 8 197 5 1 192 201 46 5 9 116 48 31 41 144 1 4 ) 

#lvl34z ( 12 15 246 219 33 130 89 20 136 90 33 17 8 100 64 209 8 152 17 108 132 16 132 176 24 12 8 66 17 8 209 12 145 136 230 48 64 136 111 16 136 150 177 129 10 99 67 71 180 128 10 10 ) 

#lvl35z ( 20 16 246 88 53 144 208 69 53 161 146 35 165 232 100 34 89 33 21 165 16 137 96 50 86 32 132 21 132 66 41 6 4 20 48 29 45 6 10 68 34 17 12 4 21 36 34 26 33 10 5 1 16 142 65 8 42 8 56 24 16 132 66 8 56 17 21 145 64 112 132 66 37 10 3 161 160 131 65 211 17 142 0 10 1 ) 

#lvl36z ( 18 19 178 159 36 150 8 120 166 5 1 224 200 130 130 155 8 82 16 164 34 216 12 6 68 8 49 165 69 10 85 49 136 50 90 33 19 136 40 136 68 34 24 35 16 65 161 89 56 131 37 34 88 35 17 40 132 24 33 19 140 16 161 74 18 198 48 25 33 160 131 24 136 68 80 192 129 20 131 101 64 224 66 18 208 112 50 17 142 22 249 32 7 8 ) 

#lvl37z ( 21 15 246 31 1 205 39 176 28 210 24 33 144 192 99 74 21 10 195 1 156 16 64 193 44 134 3 56 171 104 48 24 37 160 200 84 4 41 96 48 68 16 80 40 96 64 192 96 82 20 96 134 131 4 162 16 96 67 89 12 8 33 8 135 195 66 129 64 124 134 66 12 135 193 104 183 203 37 240 0 9 13 ) 

#lvl38z ( 14 15 30 216 107 73 13 5 139 24 16 134 8 107 16 96 132 17 88 192 96 150 194 132 40 74 37 129 80 65 80 32 130 48 16 65 129 4 33 4 24 37 130 24 8 52 66 33 16 131 2 6 5 1 130 84 20 146 208 96 183 10 116 10 3 ) 

#lvl39z ( 23 18 242 201 124 240 66 210 249 193 172 108 246 154 198 136 100 134 200 107 99 4 80 192 160 134 181 16 225 16 70 10 198 72 96 66 17 16 32 214 48 75 2 16 133 1 16 137 96 34 17 104 151 194 33 145 64 133 162 88 8 33 75 1 22 130 41 6 69 33 208 224 96 64 160 130 150 3 129 19 16 164 34 156 13 6 8 129 242 12 100 151 205 45 242 128 11 5 ) 

#lvl40z ( 11 11 194 145 172 4 27 20 4 25 20 33 17 10 51 136 48 16 167 64 96 32 176 98 33 6 66 10 4 21 2 160 131 6 162 156 0 8 1 ) 

#lvl41z ( 20 15 242 11 124 178 25 33 242 72 108 62 65 12 17 64 124 16 136 160 64 248 8 84 32 100 166 67 36 66 208 96 228 67 65 6 55 144 76 8 44 70 162 25 33 5 136 213 129 65 83 250 48 50 33 238 48 40 15 148 67 4 190 89 76 0 17 8 ) 

#lvl42z ( 13 18 28 216 68 50 83 1 10 69 33 128 192 130 19 24 8 136 131 33 16 170 20 132 24 20 23 74 21 32 201 12 10 177 146 17 13 99 16 132 67 90 73 100 172 96 34 16 107 24 140 4 26 198 3 1 240 193 72 133 75 97 160 233 140 128 2 1 ) 

#lvl43z ( 17 16 163 217 108 62 8 104 48 16 98 10 3 65 64 163 4 48 25 33 16 130 16 34 25 12 136 21 1 6 131 33 10 66 13 16 132 20 144 131 65 128 193 12 8 26 13 16 136 136 35 24 164 50 16 107 24 57 5 140 225 15 6 180 135 131 90 67 199 188 0 15 3 ) 

#lvl44z ( 25 19 195 31 52 182 67 230 134 66 8 183 201 8 64 192 168 199 8 84 18 136 116 52 75 4 65 4 12 16 201 142 138 76 68 50 67 7 32 208 65 128 137 68 184 82 10 32 192 65 18 138 68 49 129 145 8 65 129 64 160 42 24 192 168 96 132 24 8 32 217 26 17 8 64 138 100 34 16 99 26 20 6 139 104 49 136 32 193 15 24 198 50 17 15 150 24 214 192 124 176 198 208 249 100 48 75 4 62 97 236 0 13 7 ) 

#lvl45z ( 19 11 227 94 45 128 193 77 134 67 34 160 193 72 49 8 68 48 17 14 4 24 33 20 193 40 69 64 160 80 67 58 130 33 128 201 12 227 129 18 137 103 24 37 129 64 160 244 67 33 144 248 61 9 7 ) 

#lvl46z ( 22 17 163 216 41 208 201 12 20 192 116 50 41 12 10 3 161 128 136 65 178 154 33 10 68 34 32 200 104 166 3 1 8 41 49 130 154 37 157 12 133 3 1 20 222 135 3 1 4 67 123 80 96 42 73 103 25 12 144 130 17 144 206 48 67 162 129 17 104 132 77 12 4 41 13 134 67 1 18 193 45 134 69 1 80 83 165 176 25 15 150 115 224 11 14 ) 

#lvl47z ( 19 15 22 249 97 144 249 97 4 99 225 193 12 104 33 8 80 150 67 65 20 133 66 6 130 45 6 2 134 48 82 33 88 67 2 48 40 8 132 66 33 240 131 56 141 96 150 9 208 27 41 4 25 196 31 1 18 130 15 128 232 124 30 128 9 3 ) 

#lvl48z ( 16 15 210 159 36 48 67 228 6 72 124 4 68 33 210 85 2 16 201 77 10 66 37 128 139 96 32 208 65 172 129 4 25 16 172 65 6 4 8 44 241 136 34 88 41 18 131 37 48 40 33 80 217 40 86 29 12 16 200 116 244 7 11 ) 

#lvl49z ( 19 16 195 217 112 134 53 6 67 100 49 156 42 16 52 67 25 216 130 10 16 208 99 59 16 65 10 2 41 156 96 52 16 65 130 16 124 4 24 16 66 88 8 34 16 66 145 72 65 144 193 44 82 16 65 4 26 12 138 66 8 182 2 17 22 224 96 42 67 33 144 192 96 48 75 36 54 24 12 7 3 68 48 83 134 32 2 7 ) 

#lvl50z ( 21 16 179 218 120 52 75 65 224 216 130 130 154 41 6 68 21 6 72 66 128 170 66 8 17 44 132 25 37 129 2 8 80 40 12 10 2 41 4 66 169 5 24 20 20 136 96 148 16 65 129 65 13 138 69 33 8 17 140 6 8 96 33 24 12 6 112 181 64 96 32 192 119 17 16 40 16 96 59 143 134 3 187 88 33 131 219 41 0 5 9 ) 

#lvl51z ( 16 14 180 83 129 156 65 130 153 12 233 96 80 25 13 104 66 129 74 33 173 12 138 2 37 156 33 8 32 65 16 208 96 80 16 96 132 17 40 180 32 65 80 42 33 129 72 168 80 67 33 8 68 16 166 12 96 150 2 33 162 154 37 242 128 5 9 ) 

#lvl52z ( 21 14 20 249 164 48 91 228 135 66 45 192 133 44 18 200 112 49 140 8 131 1 7 3 24 225 17 18 208 89 200 48 20 21 24 198 48 67 100 40 201 11 58 129 2 33 129 89 12 104 96 82 25 53 103 133 67 37 182 24 208 33 111 134 3 33 242 142 124 160 5 12 ) 

#lvl53z ( 13 19 147 211 33 130 89 12 132 41 20 6 67 5 42 25 33 6 3 1 130 24 11 60 134 3 4 49 140 6 3 33 103 34 24 8 40 198 40 24 8 64 198 48 24 8 32 199 48 24 8 64 198 42 24 13 12 230 2 37 128 192 96 150 138 96 134 13 84 161 96 160 134 8 100 50 123 104 4 7 ) 

#lvl54z ( 23 20 30 251 44 6 72 96 50 25 12 134 2 21 138 69 34 147 80 96 50 74 33 84 200 68 43 25 12 144 133 33 25 140 132 33 40 48 17 154 217 37 30 198 50 17 79 128 198 33 72 96 34 17 40 150 52 32 193 72 50 25 33 141 8 150 8 124 10 49 210 16 100 50 67 1 146 24 49 30 218 37 240 25 13 8 66 20 4 32 130 144 131 68 32 168 66 48 66 33 160 136 96 66 33 72 80 32 65 16 248 12 135 15 125 196 4 11 ) 

#lvl55z ( 22 15 30 251 111 158 8 104 64 225 8 50 67 6 34 88 10 132 82 140 144 163 90 66 8 48 26 16 53 161 4 16 66 4 16 65 173 12 132 16 129 138 67 90 20 65 4 16 130 133 26 208 200 65 146 105 13 99 65 6 4 100 35 16 165 16 192 68 177 64 164 64 193 13 132 40 16 134 67 37 178 25 53 211 222 0 5 8 ) 

#lvl56z ( 14 16 244 208 120 164 17 136 48 74 8 65 5 2 16 232 84 148 168 34 48 75 1 130 16 66 134 72 81 145 64 104 48 32 132 180 16 100 80 26 8 134 66 12 144 193 104 50 31 12 135 116 178 29 198 207 100 11 7 ) 

#lvl57z ( 18 11 242 156 61 130 26 33 129 96 134 50 66 33 146 25 208 131 16 66 34 161 157 8 58 25 39 67 2 34 88 164 157 8 80 69 2 16 214 165 105 172 6 13 120 167 201 0 7 5 ) 

#lvl58z ( 27 20 242 204 124 226 218 15 156 24 33 6 11 124 160 200 236 99 25 13 22 138 66 44 103 80 104 50 75 4 32 189 104 68 52 16 176 132 24 198 52 32 209 136 50 16 93 173 6 131 33 8 162 8 49 173 6 130 20 10 194 11 181 4 26 33 16 192 132 160 193 12 4 27 12 10 4 37 22 136 65 178 85 42 150 10 68 32 209 72 62 75 1 6 131 2 6 5 76 18 196 70 56 32 65 130 152 10 50 90 12 8 131 229 134 67 2 128 136 96 134 14 100 134 9 96 231 200 41 243 192 21 14 ) 

#lvl59z ( 29 20 242 159 60 208 192 124 243 67 7 62 73 172 7 3 228 134 66 8 32 131 36 62 64 66 177 65 12 8 31 4 161 16 96 32 217 236 6 5 1 129 16 68 64 200 65 128 136 65 144 217 45 8 16 96 32 192 84 132 75 1 128 136 136 48 16 104 80 133 1 146 16 160 32 140 80 64 209 12 6 69 68 104 96 52 74 8 65 9 96 149 158 27 33 130 42 21 144 214 134 8 96 134 69 1 70 8 107 59 74 12 10 2 8 80 193 13 103 107 68 48 40 8 64 192 107 59 75 1 161 10 100 34 179 180 180 25 12 6 3 1 130 51 180 184 115 7 176 240 13 13 ) 

#lvl60z ( 26 16 226 223 60 144 201 79 158 16 168 166 10 124 50 16 140 20 192 71 176 131 34 144 200 65 141 97 10 10 65 128 192 65 140 160 50 40 12 8 16 131 66 11 57 4 32 132 48 67 65 99 1 140 84 134 72 104 136 22 48 24 196 32 160 65 8 100 132 49 128 179 196 8 134 68 10 33 2 198 3 24 225 12 134 194 198 3 27 88 37 24 180 32 136 188 241 218 88 61 246 8 214 249 166 32 6 8 )

#maploaded 0 #curmap 0
#maps 'lvl1z 'lvl2z 'lvl3z 'lvl4z 'lvl5z 'lvl6z 'lvl7z 'lvl8z 'lvl9z 'lvl10z
      'lvl11z 'lvl12z 'lvl13z 'lvl14z 'lvl15z 'lvl16z 'lvl17z 'lvl18z 'lvl19z 'lvl20z
      'lvl21z 'lvl22z 'lvl23z 'lvl24z 'lvl25z 'lvl26z 'lvl27z 'lvl28z 'lvl29z 'lvl30z
      'lvl31z 'lvl32z 'lvl33z 'lvl34z 'lvl35z 'lvl36z 'lvl37z 'lvl38z 'lvl39z 'lvl40z
      'lvl41z 'lvl42z 'lvl43z 'lvl44z 'lvl45z 'lvl46z 'lvl47z 'lvl48z 'lvl49z 'lvl50z
      'lvl51z 'lvl52z 'lvl53z 'lvl54z 'lvl55z 'lvl56z 'lvl57z 'lvl58z 'lvl59z 'lvl60z

| data for the current map, max is 40*25
#mapw #maph
#mapwh 0
#map * 1000
#map>

| ----- Decompression related code -----

:getmapwh | ( adr1 -- adr2 )
   c@+ 'mapw ! c@+ 'maph ! ;

:getplayerxy | ( adr -- )
   c@+ 'playerx ! c@ 'playery ! ;

#ptr #bitn

:getbyte | ( adr bitn - byte )
	 8 / + c@ ;
 
| gets next bit in the bitstream
:get1bit | ( -- 0/1 )
	 ptr bitn
	 dup rot swap getbyte swap
	 8 mod 1 + 8 swap - >>     | 8-((i%8)+1)
	 1 and
	 1 'bitn +! ;

:calccounter | ( b3 b2 b1 - val )
	    rot 4 * rot 2 * rot + + 2 + ;

:get3bits | ( -- b1 b2 b3 )
	    get1bit get1bit get1bit ;

:getcounter | ( -- counter )
	    get1bit 0? ( drop 1 ; ) drop
	    get3bits
	    calccounter ;
	    
:getcharacter | ( -- character )
	      get1bit 0? ( drop get1bit 0? ( ; ) drop 1 ; ) drop
	      get1bit 0? ( drop 2 ; ) drop
	      get1bit 0? ( drop 4 ; ) drop 3 ;

:writepair | ( char cnt -- )
	  ( 1? over map> c!+ 'map> ! 1 - ) 2drop ;

:readpair | ( -- cnt )
       getcounter dup getcharacter rot writepair ;

| decompresses a level in the current map
:mapdecomp | ( lvl - )
	   getmapwh 'ptr ! 0 'bitn !
	   'map 'map> !
	   mapw maph * 'mapwh !
	   0 ( mapwh <? readpair + ) drop

	   | bitn is sometimes not at the end of a byte
	   bitn 8 mod 1? ( bitn dup 8 mod 8 swap - + 'bitn ! ) drop

	   ptr bitn 8 / + getplayerxy
	   1 'maploaded ! ;

| ----- 

| compute size of sprite to fit same size _w,h sprites inside 7/8 of the screen
:calcscale sw 7 * 8 / mapw /
	   sh 7 * 8 / maph /
	   min 'scale ! ;

:xy2map mapw * + 'map + ;

| save the player position and the tile on which the player is in this frame
#px #py #ptile
:saveplayer playerx playery
	    2dup 'py ! 'px !
	    xy2map c@ 'ptile c! ;

:scaltrans | ( x y -- x*scale+xmap y*scale+ymap )
	   scale * ymap + swap scale * xmap + swap ;

:drawtile rot rot scaltrans scale scale spritesheet sspritesize ;
:drawtile+ | ( x y tile -- ) draws floor under tiles with transparency
	   89 =? ( drawtile ; )
	   102 =? ( drawtile ; )
	   pick2 pick2 89 drawtile
	   drawtile ;

:restoretile px -1 =? ( drop ; ) drop
	     px py ptile 4 * 'sprites + @ drawtile ;

:drawplayer restoretile
	    playerx playery playerdir 4 * 'player + @ drawtile ;

:drawmap
	0 ( maph <?
		0 ( mapw <?
		  2dup swap 2dup xy2map c@ 4 * 'sprites + @ drawtile+
		1 + ) drop
	1 + ) drop ;

:nextmap curmap 1 + NMAPS mod 'curmap ! 0 'maploaded ! ;
:prevmap curmap 1 - 0 max 'curmap ! 0 'maploaded ! ;

:box? xy2map c@ 2 =? ( drop nboxes 1 + 'nboxes ! ; ) drop ;
:won? 0 'nboxes !
      0 ( mapw <?
		0 ( maph <?
		  2dup box?
		1 + ) drop
	1 + ) drop
	nboxes 0? ( nextmap ) drop ;

:playertrans | (dx dy -- player+dx player+dy )
	     playery + swap playerx + swap ;

:x,y*2 |( x y -- 2*x 2*y)
	 dup + swap dup + swap ;

:rot- rot rot ;

:3dup pick2 pick2 pick2 ;

:updatemap! | ( dx dy tile -- )
	    rot- playertrans
	    3dup rot 4 * 'sprites + @ drawtile+
	    xy2map c! ;

:pushbox! | ( dx dy tile1 tile2 -- )
	  pick3 pick3 x,y*2 rot updatemap! updatemap! ;

:pushbox? | ( dx dy ptile -- 0/1 ) ptile is tile under the player if the move happens
	  rot-
	  2dup x,y*2 playertrans xy2map c@ | what tile behind the box in the push direction?
	  FLOOR =? ( drop pick2 BOX     pushbox! drop 1 ; )
	  GOAL  =? ( drop pick2 BOXGOAL pushbox! drop 1 ; )
	  4drop 0 ;

| can the player move to (playerx+dx, playery+dy) ? Also deals with box pushing
:movelogic | ( dx dy -- 0/1 )
	   saveplayer                 | to redraw the tile under the player
	   2dup playertrans xy2map c@ | what tile are we trying to move on ?
	   FLOOR   =? ( 3drop 1 ; )
	   BOX     =? ( drop FLOOR pushbox? ; )
	   BOXGOAL =? ( drop GOAL  pushbox? ; )
	   GOAL    =? ( 3drop 1 ; )
	   3drop 0 ;

:setdir 'playerdir ! ;

:lookup UP setdir ;
:lookdn DN setdir ;
:lookri RI setdir ;
:lookle LE setdir ;

:adjustplayer playertrans 'playery ! 'playerx ! ;

:trymove 2dup movelogic 1? ( drop adjustplayer ; ) 3drop ;

:tryri  1  0 trymove ;
:tryle -1  0 trymove ;
:tryup  0 -1 trymove ;
:trydn  0  1 trymove ;

:keyboard key
	  >esc< =? ( exit )
	  <pgup> =? ( nextmap )
	  <pgdn> =? ( prevmap )
	  <ri> =? ( tryri lookri )
	  <le> =? ( tryle lookle )
	  <up> =? ( tryup lookup )
	  <dn> =? ( trydn lookdn )
	  <f1> =? ( 0 'maploaded ! )
	  drop ;

:resetp -1 dup 'px ! 'py ! ;

:loadcurmap 'maps curmap 4 * + @ mapdecomp calcscale resetp ;

| - - - - -

#dt 0
#framedt 0

:angle | ( val basis -- angle)
	swap $10000 * swap / $10000 2 / swap - ;

| x = a*sin(t), y = a*cos(2t)
:lsjw sw 3 / 16 << ;
:lsjh sh 3 / 16 << ;
:lsjx        cos lsjw *. 16 >> sw 2 / + ;
:lsjy 2.0 *. sin lsjh *. 16 >> sh 2 / + ;

:getxy 	1000 angle dup lsjx swap lsjy ;

:incdt dt 4 + 'dt ! ;

:animletter | ( l t -- )
	    getxy atxy print ;

:fontsize dt 1000 angle cos abs 128.0 *. 128.0 + 16 >> ;

#levelstr "Level %d"
#msg * 16
#letterstr " "

:buildmsg curmap 1 + 'levelstr sprint 'msg strcpy ;

:drawletters | ( -- )
	     'msg count nip
	     ( +?
	       dup
	       'msg + c@ 'letterstr c!
	       'letterstr framedt animletter
	       framedt 32 + 'framedt !
	       1 - ) drop ;

:screen key
	>esc< =? ( exit )
	>esp< =? ( exit )
	<pgup> =? ( nextmap exit )
	<pgdn> =? ( prevmap exit )
	drop
	xfb>
	dt 'framedt !
	archivoblackregular fontsize fontr!
	buildmsg drawletters
	incdt ;

:animation 'screen onshow ;

:loadmap loadcurmap cls drawmap >xfb animation xfb> ;

:game home keyboard
      maploaded 0? ( loadmap ) drop | full screen drawn only once
      drawplayer won? ;

:load_tilesheet | ( -- )
	64 64 "media/img/sokoban_tilesheet.png" loadimg tileSheet 'spritesheet ! ;

:topleft! | set top left of map
	  sw 16 / 'xmap !
	  sh 16 / 'ymap ! ;

:gray $eeeeee 'ink ! ;

:init	mark
	cls home gray
	load_tilesheet
	topleft!
	0 'curmap !
	iniXFB
	;

: init 'game onshow ;

