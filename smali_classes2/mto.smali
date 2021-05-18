.class public Lmto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Landroid/view/View$OnFocusChangeListener;

.field final synthetic b:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;


# direct methods
.method public constructor <init>(Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lmto;->b:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    iput-object p2, p0, Lmto;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lmto;->a:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lmto;->a:Landroid/view/View$OnFocusChangeListener;

    iget-object v1, p0, Lmto;->b:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-interface {v0, v1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 236
    :cond_0
    return-void
.end method
