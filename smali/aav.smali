.class public Laav;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;


# direct methods
.method public constructor <init>(Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Laav;->a:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 47
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    .line 48
    :cond_1
    iget-object v0, p0, Laav;->a:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    invoke-static {v0}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->a(Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;)V

    .line 50
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
