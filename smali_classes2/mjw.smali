.class public Lmjw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;


# direct methods
.method public constructor <init>(Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lmjw;->b:Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;

    iput-object p2, p0, Lmjw;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lmjw;->a:Landroid/app/Dialog;

    const v1, 0x7f1010d6

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 296
    return-void
.end method
