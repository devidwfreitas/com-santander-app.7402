.class Lkbl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/SeekBar;

.field final synthetic b:I

.field final synthetic c:Landroid/app/Dialog;

.field final synthetic d:Lkbi;


# direct methods
.method constructor <init>(Lkbi;Landroid/widget/SeekBar;ILandroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lkbl;->d:Lkbi;

    iput-object p2, p0, Lkbl;->a:Landroid/widget/SeekBar;

    iput p3, p0, Lkbl;->b:I

    iput-object p4, p0, Lkbl;->c:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lkbl;->a:Landroid/widget/SeekBar;

    iget v1, p0, Lkbl;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 275
    iget-object v0, p0, Lkbl;->d:Lkbi;

    iget v1, p0, Lkbl;->b:I

    invoke-virtual {v0, v1}, Lkbi;->b(I)V

    .line 276
    iget-object v0, p0, Lkbl;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 277
    return-void
.end method
