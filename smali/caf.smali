.class public Lcaf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcau;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcau",
        "<",
        "Lcom/facebook/share/model/AppInviteContent;",
        "Lcaf;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcag;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcaf;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcaf;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcaf;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcaf;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic c(Lcaf;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcaf;->c:Ljava/lang/String;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 255
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 256
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 257
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 261
    :goto_1
    return v1

    .line 255
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static synthetic d(Lcaf;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcaf;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic e(Lcaf;)Lcag;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcaf;->e:Lcag;

    return-object v0
.end method


# virtual methods
.method public a(Lcag;)Lcaf;
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcaf;->e:Lcag;

    .line 232
    return-object p0
.end method

.method public a(Lcom/facebook/share/model/AppInviteContent;)Lcaf;
    .locals 3

    .prologue
    .line 244
    if-nez p1, :cond_0

    .line 247
    :goto_0
    return-object p0

    .line 248
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/share/model/AppInviteContent;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcaf;->a(Ljava/lang/String;)Lcaf;

    move-result-object v0

    .line 249
    invoke-virtual {p1}, Lcom/facebook/share/model/AppInviteContent;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcaf;->b(Ljava/lang/String;)Lcaf;

    move-result-object v0

    .line 250
    invoke-virtual {p1}, Lcom/facebook/share/model/AppInviteContent;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/share/model/AppInviteContent;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcaf;->a(Ljava/lang/String;Ljava/lang/String;)Lcaf;

    move-result-object v0

    .line 251
    invoke-virtual {p1}, Lcom/facebook/share/model/AppInviteContent;->e()Lcag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcaf;->a(Lcag;)Lcaf;

    move-result-object p0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcaf;
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcaf;->a:Ljava/lang/String;

    .line 166
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcaf;
    .locals 2

    .prologue
    .line 193
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 194
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x50

    if-le v0, v1, :cond_0

    .line 195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid promotion text, promotionText needs to be between1 and 80 characters long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_0
    invoke-direct {p0, p1}, Lcaf;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid promotion text, promotionText can only contain alphanumericcharacters and spaces."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 208
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    .line 209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid promotion code, promotionCode can be between1 and 10 characters long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_2
    invoke-direct {p0, p2}, Lcaf;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid promotion code, promotionCode can only contain alphanumeric characters and spaces."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "promotionCode cannot be specified without a valid promotionText"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_4
    iput-object p2, p0, Lcaf;->c:Ljava/lang/String;

    .line 226
    iput-object p1, p0, Lcaf;->d:Ljava/lang/String;

    .line 227
    return-object p0
.end method

.method public bridge synthetic a(Lcom/facebook/share/model/ShareModel;)Lcau;
    .locals 1

    .prologue
    .line 130
    check-cast p1, Lcom/facebook/share/model/AppInviteContent;

    invoke-virtual {p0, p1}, Lcaf;->a(Lcom/facebook/share/model/AppInviteContent;)Lcaf;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcaf;->b()Lcom/facebook/share/model/AppInviteContent;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcaf;
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcaf;->b:Ljava/lang/String;

    .line 177
    return-object p0
.end method

.method public b()Lcom/facebook/share/model/AppInviteContent;
    .locals 2

    .prologue
    .line 238
    new-instance v0, Lcom/facebook/share/model/AppInviteContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/AppInviteContent;-><init>(Lcaf;Lcae;)V

    return-object v0
.end method
