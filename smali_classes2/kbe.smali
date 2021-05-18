.class public Lkbe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljrn;


# instance fields
.field final synthetic a:Landroid/widget/SeekBar;

.field final synthetic b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lkbe;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    iput-object p2, p0, Lkbe;->a:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lkbe;->a:Landroid/widget/SeekBar;

    iget-object v1, p0, Lkbe;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v1}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->g(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 212
    return-void
.end method
