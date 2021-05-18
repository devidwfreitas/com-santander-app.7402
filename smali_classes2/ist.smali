.class List;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lism;


# direct methods
.method constructor <init>(Lism;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 829
    iput-object p1, p0, List;->b:Lism;

    iput-object p2, p0, List;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, List;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 833
    return-void
.end method
