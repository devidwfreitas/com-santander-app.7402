.class public Lcom/santander/app/seguros/ui/widgets/sb/SeekBar;
.super Landroid/widget/SeekBar;
.source "SourceFile"

# interfaces
.implements Lmga;


# instance fields
.field private a:Lmfq;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/santander/app/seguros/ui/widgets/sb/SeekBar;->a(Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/santander/app/seguros/ui/widgets/sb/SeekBar;->a(Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0, p2, p3}, Lcom/santander/app/seguros/ui/widgets/sb/SeekBar;->a(Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method private a(Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/sb/SeekBar;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lmfp;

    invoke-direct {v0, p0, p1, p2}, Lmfp;-><init>(Landroid/widget/SeekBar;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/sb/SeekBar;->a:Lmfq;

    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lmfq;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/sb/SeekBar;->a:Lmfq;

    return-object v0
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/sb/SeekBar;->a:Lmfq;

    invoke-virtual {v0, p1}, Lmfq;->a(Landroid/widget/SeekBar$OnSeekBarChangeListener;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 41
    return-void
.end method
