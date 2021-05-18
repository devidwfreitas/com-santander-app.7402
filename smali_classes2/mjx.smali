.class public Lmjx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;


# direct methods
.method public constructor <init>(Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lmjx;->b:Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;

    iput-object p2, p0, Lmjx;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lmjx;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 302
    return-void
.end method
