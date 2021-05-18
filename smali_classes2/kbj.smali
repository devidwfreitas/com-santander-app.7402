.class Lkbj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lkbi;

.field private c:I

.field private d:I


# direct methods
.method constructor <init>(Lkbi;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 130
    iput-object p1, p0, Lkbj;->b:Lkbi;

    iput p2, p0, Lkbj;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput v0, p0, Lkbj;->c:I

    .line 132
    iput v0, p0, Lkbj;->d:I

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .prologue
    .line 136
    iput p2, p0, Lkbj;->c:I

    .line 137
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lkbj;->d:I

    .line 142
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6

    .prologue
    const/16 v3, 0x4b

    const/16 v2, 0x19

    const/16 v1, 0x32

    .line 146
    iget v0, p0, Lkbj;->c:I

    if-gt v0, v2, :cond_2

    .line 147
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 156
    :cond_0
    :goto_0
    iget v0, p0, Lkbj;->d:I

    iget v1, p0, Lkbj;->c:I

    if-eq v0, v1, :cond_1

    .line 157
    iget-object v0, p0, Lkbj;->b:Lkbi;

    iget v1, p0, Lkbj;->c:I

    iget v2, p0, Lkbj;->a:I

    iget v4, p0, Lkbj;->d:I

    iget-object v3, p0, Lkbj;->b:Lkbi;

    invoke-static {v3}, Lkbi;->a(Lkbi;)Ljava/util/List;

    move-result-object v3

    iget v5, p0, Lkbj;->a:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkbq;

    invoke-virtual {v3}, Lkbq;->b()Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lkbi;->a(IILandroid/widget/SeekBar;ILjava/lang/String;)V

    .line 159
    :cond_1
    return-void

    .line 148
    :cond_2
    iget v0, p0, Lkbj;->c:I

    if-le v0, v2, :cond_3

    iget v0, p0, Lkbj;->c:I

    if-gt v0, v1, :cond_3

    .line 149
    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 150
    :cond_3
    iget v0, p0, Lkbj;->c:I

    if-le v0, v1, :cond_4

    iget v0, p0, Lkbj;->c:I

    if-gt v0, v3, :cond_4

    .line 151
    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 152
    :cond_4
    iget v0, p0, Lkbj;->c:I

    if-le v0, v3, :cond_0

    .line 153
    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
