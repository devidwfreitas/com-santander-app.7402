.class public Lmtn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;


# direct methods
.method public constructor <init>(Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lmtn;->a:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 113
    if-eqz p2, :cond_1

    const v0, 0x7f02061c

    .line 115
    :goto_0
    iget-object v1, p0, Lmtn;->a:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-static {v1}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->d(Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    iget-object v0, p0, Lmtn;->a:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-static {v0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->e(Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lmtn;->a:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-static {v0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->e(Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 119
    :cond_0
    return-void

    .line 113
    :cond_1
    const v0, 0x7f02061d

    goto :goto_0
.end method
