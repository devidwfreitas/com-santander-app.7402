.class public Lcad;
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
        "Lcom/facebook/share/model/AppGroupCreationContent;",
        "Lcad;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcac;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcad;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcad;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcad;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcad;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic c(Lcad;)Lcac;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcad;->c:Lcac;

    return-object v0
.end method


# virtual methods
.method public a(Lcac;)Lcad;
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcad;->c:Lcac;

    .line 148
    return-object p0
.end method

.method public a(Lcom/facebook/share/model/AppGroupCreationContent;)Lcad;
    .locals 2

    .prologue
    .line 159
    if-nez p1, :cond_0

    .line 162
    :goto_0
    return-object p0

    .line 163
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/share/model/AppGroupCreationContent;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcad;->a(Ljava/lang/String;)Lcad;

    move-result-object v0

    .line 164
    invoke-virtual {p1}, Lcom/facebook/share/model/AppGroupCreationContent;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcad;->b(Ljava/lang/String;)Lcad;

    move-result-object v0

    .line 165
    invoke-virtual {p1}, Lcom/facebook/share/model/AppGroupCreationContent;->c()Lcac;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcad;->a(Lcac;)Lcad;

    move-result-object p0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcad;
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcad;->a:Ljava/lang/String;

    .line 126
    return-object p0
.end method

.method public bridge synthetic a(Lcom/facebook/share/model/ShareModel;)Lcau;
    .locals 1

    .prologue
    .line 112
    check-cast p1, Lcom/facebook/share/model/AppGroupCreationContent;

    invoke-virtual {p0, p1}, Lcad;->a(Lcom/facebook/share/model/AppGroupCreationContent;)Lcad;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcad;->b()Lcom/facebook/share/model/AppGroupCreationContent;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcad;
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcad;->b:Ljava/lang/String;

    .line 137
    return-object p0
.end method

.method public b()Lcom/facebook/share/model/AppGroupCreationContent;
    .locals 2

    .prologue
    .line 153
    new-instance v0, Lcom/facebook/share/model/AppGroupCreationContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/AppGroupCreationContent;-><init>(Lcad;Lcab;)V

    return-object v0
.end method
