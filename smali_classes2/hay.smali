.class Lhay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lhav;


# direct methods
.method constructor <init>(Lhav;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lhay;->b:Lhav;

    iput-object p2, p0, Lhay;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lhay;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 371
    return-void
.end method
