.class public Lcom/ca/android/wrapper/tools/ReplaceUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static L_REGISTER:Ljava/lang/String;

.field private static SEMI_COLON:Ljava/lang/String;

.field private static SMALI:Ljava/lang/String;

.field private static SMALI_EXTENSION:Ljava/lang/String;

.field private static logger:Lcom/ca/android/wrapper/util/Logger;

.field private static runningNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    invoke-static {}, Lcom/ca/android/wrapper/util/Logger;->getLogger()Lcom/ca/android/wrapper/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/ca/android/wrapper/tools/ReplaceUtil;->logger:Lcom/ca/android/wrapper/util/Logger;

    .line 25
    const-string v0, "smali"

    sput-object v0, Lcom/ca/android/wrapper/tools/ReplaceUtil;->SMALI:Ljava/lang/String;

    .line 26
    const/16 v0, 0x270f

    sput v0, Lcom/ca/android/wrapper/tools/ReplaceUtil;->runningNumber:I

    .line 27
    const-string v0, "L"

    sput-object v0, Lcom/ca/android/wrapper/tools/ReplaceUtil;->L_REGISTER:Ljava/lang/String;

    .line 28
    const-string v0, ";"

    sput-object v0, Lcom/ca/android/wrapper/tools/ReplaceUtil;->SEMI_COLON:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ca/android/wrapper/tools/ReplaceUtil;->SMALI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ca/android/wrapper/tools/ReplaceUtil;->SMALI_EXTENSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fileContents(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/ca/android/wrapper/config/ReplacementElement;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 93
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 94
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 95
    const/4 v0, 0x0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 96
    :goto_0
    if-eqz v0, :cond_2

    .line 97
    const-string v4, ".super"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 100
    :cond_0
    if-eqz v1, :cond_1

    .line 101
    invoke-static {v1, v0, p1, p2}, Lcom/ca/android/wrapper/tools/ReplaceUtil;->processedFileWithPatterns(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 107
    return-object v2
.end method

.method private static getWholeFileContents(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    const-string v1, ""

    .line 113
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 114
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    return-object v0
.end method

.method private static insertCodeForContentResolverForContacts(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 169
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android\\support\\v4\\content\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android/support/v4/content/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 178
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 179
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 180
    :goto_1
    if-eqz v0, :cond_4

    .line 182
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 184
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 187
    :goto_2
    const-string v3, "move-result-object"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 188
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 193
    :cond_2
    const-string v3, "move-result-object"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 195
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 198
    const-string v4, "{CURSOR_OBJECT_VAR_SMALI}"

    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 199
    const-string v4, "{CONDITION_VAR_SMALI}"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cond_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/ca/android/wrapper/tools/ReplaceUtil;->runningNumber:I

    add-int/lit8 v6, v6, -0x1

    sput v6, Lcom/ca/android/wrapper/tools/ReplaceUtil;->runningNumber:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 200
    const-string v4, "{GOTO_VAR_SMALI}"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "goto_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/ca/android/wrapper/tools/ReplaceUtil;->runningNumber:I

    add-int/lit8 v6, v6, -0x1

    sput v6, Lcom/ca/android/wrapper/tools/ReplaceUtil;->runningNumber:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 202
    sget-object v4, Lcom/ca/android/wrapper/tools/ReplaceUtil;->logger:Lcom/ca/android/wrapper/util/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inserting Code after "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " as "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ca/android/wrapper/util/Logger;->info(Ljava/lang/String;)V

    .line 203
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 209
    :cond_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 211
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    .line 212
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 213
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 214
    :cond_5
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    goto/16 :goto_0
.end method

.method public static insertCodeForLocationManager(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 219
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 221
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 222
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 224
    :goto_0
    if-eqz v2, :cond_2

    .line 225
    if-eqz v0, :cond_0

    .line 226
    const-string v0, "{CONDITION_VAR_SMALI}"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cond_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/ca/android/wrapper/tools/ReplaceUtil;->runningNumber:I

    add-int/lit8 v6, v6, -0x1

    sput v6, Lcom/ca/android/wrapper/tools/ReplaceUtil;->runningNumber:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 227
    const-string v5, "{GOTO_VAR_SMALI}"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "goto_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/ca/android/wrapper/tools/ReplaceUtil;->runningNumber:I

    add-int/lit8 v7, v7, -0x1

    sput v7, Lcom/ca/android/wrapper/tools/ReplaceUtil;->runningNumber:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    sget-object v2, Lcom/ca/android/wrapper/tools/ReplaceUtil;->logger:Lcom/ca/android/wrapper/util/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Inserting Code after "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " as "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/ca/android/wrapper/util/Logger;->info(Ljava/lang/String;)V

    move-object v2, v0

    move v0, v1

    .line 232
    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 233
    const/4 v0, 0x1

    .line 235
    :cond_1
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 238
    :cond_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 239
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    .line 240
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 241
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 242
    :cond_3
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 243
    return-void
.end method

.method private static isFileOneOfAndroidsThatWeUse(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 302
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/ca/android/wrapper/tools/ReplaceUtil;->SMALI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/ca/android/wrapper/tools/ReplaceUtil;->L_REGISTER:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/ca/android/wrapper/tools/ReplaceUtil;->SEMI_COLON:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/ca/android/wrapper/tools/ReplaceUtil;->SMALI_EXTENSION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 307
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 310
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static processClassReplacements(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/ca/android/wrapper/config/ReplacementElement;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ca/android/wrapper/config/ReplacementElement;

    .line 38
    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lcom/ca/android/wrapper/config/ReplacementElement;->getReplaceFrom()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/ca/android/wrapper/config/ReplacementElement;->getReplaceFrom()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Landroid/app/Application"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    :cond_1
    invoke-virtual {v0}, Lcom/ca/android/wrapper/config/ReplacementElement;->getSkipFiles()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 43
    invoke-virtual {v0}, Lcom/ca/android/wrapper/config/ReplacementElement;->getSkipFiles()Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 44
    array-length v6, v5

    move v3, v2

    move v1, v2

    :goto_1
    if-ge v3, v6, :cond_4

    aget-object v7, v5, v3

    .line 45
    const-string v8, "\\\\"

    const-string v9, "/"

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 46
    const/4 v1, 0x1

    .line 44
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    .line 50
    :cond_4
    if-nez v1, :cond_6

    .line 51
    invoke-virtual {v0}, Lcom/ca/android/wrapper/config/ReplacementElement;->getReplaceFrom()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Lcom/ca/android/wrapper/config/ReplacementElement;->getReplaceTo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 53
    :cond_5
    invoke-virtual {v0}, Lcom/ca/android/wrapper/config/ReplacementElement;->getMethodFrom()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lcom/ca/android/wrapper/config/ReplacementElement;->getMethodTo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 54
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v0}, Lcom/ca/android/wrapper/tools/ReplaceUtil;->replaceMethods(Ljava/io/File;Lcom/ca/android/wrapper/config/ReplacementElement;)V

    .line 59
    :cond_6
    :goto_2
    if-nez v1, :cond_0

    .line 60
    invoke-virtual {v0}, Lcom/ca/android/wrapper/config/ReplacementElement;->getInsertAfter()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lcom/ca/android/wrapper/config/ReplacementElement;->getInsertWhat()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 61
    :cond_7
    invoke-virtual {v0}, Lcom/ca/android/wrapper/config/ReplacementElement;->getInsertAfter()Ljava/lang/String;

    move-result-object v1

    const-string v3, "onLocationChanged"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 62
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ca/android/wrapper/config/ReplacementElement;->getInsertAfter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ca/android/wrapper/config/ReplacementElement;->getInsertWhat()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/ca/android/wrapper/tools/ReplaceUtil;->insertCodeForLocationManager(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 56
    :cond_8
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v0}, Lcom/ca/android/wrapper/tools/ReplaceUtil;->replaceClasses(Ljava/io/File;Lcom/ca/android/wrapper/config/ReplacementElement;)V

    goto :goto_2

    .line 63
    :cond_9
    invoke-virtual {v0}, Lcom/ca/android/wrapper/config/ReplacementElement;->getInsertAfter()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ContentResolver"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ca/android/wrapper/config/ReplacementElement;->getInsertAfter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ca/android/wrapper/config/ReplacementElement;->getInsertWhat()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/ca/android/wrapper/tools/ReplaceUtil;->insertCodeForContentResolverForContacts(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 69
    :cond_a
    return-void
.end method

.method public static processRegex(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/ca/android/wrapper/config/ReplacementElement;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-static {p0, p1, p2}, Lcom/ca/android/wrapper/tools/ReplaceUtil;->fileContents(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    .line 80
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    .line 81
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 85
    return-void
.end method

.method public static processSpecial(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/ca/android/wrapper/config/ReplacementElement;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-static {p0, p1, p2}, Lcom/ca/android/wrapper/tools/ReplaceUtil;->processRegex(Ljava/lang/String;Ljava/util/List;Z)V

    .line 89
    return-void
.end method

.method private static processedFileWithPatterns(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/ca/android/wrapper/config/ReplacementElement;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 123
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 124
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ca/android/wrapper/config/ReplacementElement;

    .line 125
    invoke-virtual {v0}, Lcom/ca/android/wrapper/config/ReplacementElement;->getReplaceFrom()Ljava/lang/String;

    move-result-object v4

    .line 126
    if-eqz p3, :cond_1

    if-eqz v4, :cond_1

    const-string v5, "Landroid/app/Application"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 129
    :cond_1
    invoke-virtual {v0}, Lcom/ca/android/wrapper/config/ReplacementElement;->getReplaceTo()Ljava/lang/String;

    move-result-object v5

    .line 130
    invoke-virtual {v0}, Lcom/ca/android/wrapper/config/ReplacementElement;->getMatcher()Ljava/lang/String;

    move-result-object v6

    .line 131
    if-eqz v6, :cond_2

    if-eqz v6, :cond_0

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 132
    :cond_2
    invoke-virtual {v0}, Lcom/ca/android/wrapper/config/ReplacementElement;->getPatterns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    :try_start_0
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 136
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    move v0, v1

    .line 137
    :cond_4
    :goto_1
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 138
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    if-eqz v8, :cond_4

    .line 139
    const/4 v0, 0x1

    goto :goto_1

    .line 142
    :catch_0
    move-exception v0

    move v0, v1

    .line 145
    :cond_5
    if-eqz v0, :cond_3

    .line 146
    invoke-static {v5}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 148
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    :cond_6
    return-object p1
.end method

.method public static replaceClasses(Ljava/io/File;Lcom/ca/android/wrapper/config/ReplacementElement;)V
    .locals 6

    .prologue
    .line 246
    invoke-virtual {p1}, Lcom/ca/android/wrapper/config/ReplacementElement;->getReplaceFrom()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ca/android/wrapper/tools/ReplaceUtil;->isFileOneOfAndroidsThatWeUse(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 250
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 252
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 253
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 254
    :goto_1
    if-eqz v0, :cond_2

    .line 255
    invoke-virtual {p1}, Lcom/ca/android/wrapper/config/ReplacementElement;->getReplaceFrom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 256
    invoke-virtual {p1}, Lcom/ca/android/wrapper/config/ReplacementElement;->getReplaceFrom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ca/android/wrapper/config/ReplacementElement;->getReplaceTo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 257
    sget-object v3, Lcom/ca/android/wrapper/tools/ReplaceUtil;->logger:Lcom/ca/android/wrapper/util/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Replacing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ca/android/wrapper/config/ReplacementElement;->getReplaceFrom()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ca/android/wrapper/config/ReplacementElement;->getReplaceTo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ca/android/wrapper/util/Logger;->debug(Ljava/lang/String;)V

    .line 259
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 262
    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 263
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    .line 264
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 265
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 266
    :cond_3
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    goto/16 :goto_0
.end method

.method public static replaceMethods(Ljava/io/File;Lcom/ca/android/wrapper/config/ReplacementElement;)V
    .locals 6

    .prologue
    .line 272
    invoke-virtual {p1}, Lcom/ca/android/wrapper/config/ReplacementElement;->getReplaceFrom()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ca/android/wrapper/tools/ReplaceUtil;->isFileOneOfAndroidsThatWeUse(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    :goto_0
    return-void

    .line 276
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 278
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 279
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 280
    :goto_1
    if-eqz v0, :cond_2

    .line 281
    invoke-virtual {p1}, Lcom/ca/android/wrapper/config/ReplacementElement;->getReplaceFrom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/ca/android/wrapper/config/ReplacementElement;->getMethodFrom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 282
    invoke-virtual {p1}, Lcom/ca/android/wrapper/config/ReplacementElement;->getReplaceFrom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ca/android/wrapper/config/ReplacementElement;->getReplaceTo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 283
    sget-object v3, Lcom/ca/android/wrapper/tools/ReplaceUtil;->logger:Lcom/ca/android/wrapper/util/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Replacing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ca/android/wrapper/config/ReplacementElement;->getReplaceFrom()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ca/android/wrapper/config/ReplacementElement;->getReplaceTo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ca/android/wrapper/util/Logger;->debug(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p1}, Lcom/ca/android/wrapper/config/ReplacementElement;->getMethodFrom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ca/android/wrapper/config/ReplacementElement;->getMethodTo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 285
    sget-object v3, Lcom/ca/android/wrapper/tools/ReplaceUtil;->logger:Lcom/ca/android/wrapper/util/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Replacing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ca/android/wrapper/config/ReplacementElement;->getMethodFrom()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ca/android/wrapper/config/ReplacementElement;->getMethodTo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ca/android/wrapper/util/Logger;->debug(Ljava/lang/String;)V

    .line 287
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 290
    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 292
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    .line 293
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 294
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 295
    :cond_3
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    goto/16 :goto_0
.end method
