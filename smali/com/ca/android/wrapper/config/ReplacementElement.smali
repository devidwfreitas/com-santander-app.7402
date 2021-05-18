.class public Lcom/ca/android/wrapper/config/ReplacementElement;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private file:Ljava/lang/String;

.field private insertAfter:Ljava/lang/String;

.field private insertWhat:Ljava/lang/String;

.field private matcher:Ljava/lang/String;

.field private methodFrom:Ljava/lang/String;

.field private methodTo:Ljava/lang/String;

.field private patterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private replaceFor:Ljava/lang/String;

.field private replaceFrom:Ljava/lang/String;

.field private replaceTo:Ljava/lang/String;

.field private skipFiles:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ca/android/wrapper/config/ReplacementElement;->patterns:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/ca/android/wrapper/config/ReplacementElement;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getInsertAfter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ca/android/wrapper/config/ReplacementElement;->insertAfter:Ljava/lang/String;

    return-object v0
.end method

.method public getInsertWhat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ca/android/wrapper/config/ReplacementElement;->insertWhat:Ljava/lang/String;

    return-object v0
.end method

.method public getMatcher()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/ca/android/wrapper/config/ReplacementElement;->matcher:Ljava/lang/String;

    return-object v0
.end method

.method public getMethodFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ca/android/wrapper/config/ReplacementElement;->methodFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getMethodTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ca/android/wrapper/config/ReplacementElement;->methodTo:Ljava/lang/String;

    return-object v0
.end method

.method public getPatterns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/ca/android/wrapper/config/ReplacementElement;->patterns:Ljava/util/List;

    return-object v0
.end method

.method public getReplaceFor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ca/android/wrapper/config/ReplacementElement;->replaceFor:Ljava/lang/String;

    return-object v0
.end method

.method public getReplaceFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ca/android/wrapper/config/ReplacementElement;->replaceFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getReplaceTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ca/android/wrapper/config/ReplacementElement;->replaceTo:Ljava/lang/String;

    return-object v0
.end method

.method public getSkipFiles()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ca/android/wrapper/config/ReplacementElement;->skipFiles:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ca/android/wrapper/config/ReplacementElement;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/ca/android/wrapper/config/ReplacementElement;->file:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setInsertAfter(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/ca/android/wrapper/config/ReplacementElement;->insertAfter:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setInsertWhat(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/ca/android/wrapper/config/ReplacementElement;->insertWhat:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setMatcher(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/ca/android/wrapper/config/ReplacementElement;->matcher:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setMethodFrom(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/ca/android/wrapper/config/ReplacementElement;->methodFrom:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setMethodTo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/ca/android/wrapper/config/ReplacementElement;->methodTo:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setPatterns(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    iput-object p1, p0, Lcom/ca/android/wrapper/config/ReplacementElement;->patterns:Ljava/util/List;

    .line 34
    return-void
.end method

.method public setReplaceFor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/ca/android/wrapper/config/ReplacementElement;->replaceFor:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setReplaceFrom(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/ca/android/wrapper/config/ReplacementElement;->replaceFrom:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setReplaceTo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/ca/android/wrapper/config/ReplacementElement;->replaceTo:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setSkipFiles(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/ca/android/wrapper/config/ReplacementElement;->skipFiles:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/ca/android/wrapper/config/ReplacementElement;->type:Ljava/lang/String;

    .line 42
    return-void
.end method
