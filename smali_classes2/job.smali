.class public Ljob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljoa;


# instance fields
.field private a:Ljnv;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private b:Ljni;

.field private c:Ljnj;


# direct methods
.method public constructor <init>(Ljnv;)V
    .locals 1
    .param p1    # Ljnv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljoc;

    invoke-direct {v0, p0}, Ljoc;-><init>(Ljob;)V

    iput-object v0, p0, Ljob;->c:Ljnj;

    .line 29
    iput-object p1, p0, Ljob;->a:Ljnv;

    .line 30
    new-instance v0, Ljnk;

    invoke-direct {v0}, Ljnk;-><init>()V

    iput-object v0, p0, Ljob;->b:Ljni;

    .line 31
    return-void
.end method

.method static synthetic a(Ljob;)Ljnv;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Ljob;->a:Ljnv;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Ljob;->a:Ljnv;

    if-nez v0, :cond_0

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Ljob;->a:Ljnv;

    invoke-interface {v0}, Ljnv;->a()V

    .line 39
    iget-object v0, p0, Ljob;->b:Ljni;

    iget-object v1, p0, Ljob;->c:Ljnj;

    invoke-interface {v0, v1}, Ljni;->a(Ljnj;)V

    goto :goto_0
.end method

.method public a(Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Ljob;->a:Ljnv;

    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-virtual {p1}, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 99
    :pswitch_0
    invoke-virtual {p1}, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 100
    iget-object v1, p0, Ljob;->a:Ljnv;

    invoke-interface {v1, v0}, Ljnv;->a(Landroid/net/Uri;)V

    goto :goto_0

    .line 103
    :pswitch_1
    iget-object v0, p0, Ljob;->a:Ljnv;

    invoke-interface {v0, p1}, Ljnv;->b(Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;)V

    goto :goto_0

    .line 106
    :pswitch_2
    iget-object v0, p0, Ljob;->a:Ljnv;

    invoke-interface {v0, p1}, Ljnv;->c(Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;)V

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Ljob;->a:Ljnv;

    .line 45
    return-void
.end method
