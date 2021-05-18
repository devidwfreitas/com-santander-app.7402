.class public Lgoo;
.super Lfom;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field public a:Landroid/widget/ImageView;

.field private b:Landroid/support/v4/view/ViewPager;

.field private c:Landroid/widget/ImageView;

.field private d:I

.field private e:Lcom/santander/app/widget/Indicator;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lfuu;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/app/Activity;

.field private h:Landroid/widget/Spinner;

.field private i:Landroid/widget/Spinner;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/CheckBox;

.field private n:Landroid/widget/CheckBox;

.field private o:Lnez;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;Lcom/santander/app/widget/Indicator;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 7

    .prologue
    .line 84
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lgoo;-><init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;Lcom/santander/app/widget/Indicator;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;Lcom/santander/app/widget/Indicator;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lfom;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lgoo;->o:Lnez;

    .line 52
    iput-object p2, p0, Lgoo;->b:Landroid/support/v4/view/ViewPager;

    .line 53
    iput-object p4, p0, Lgoo;->a:Landroid/widget/ImageView;

    .line 54
    iput-object p5, p0, Lgoo;->c:Landroid/widget/ImageView;

    .line 55
    iput p6, p0, Lgoo;->d:I

    .line 56
    iput-object p3, p0, Lgoo;->e:Lcom/santander/app/widget/Indicator;

    .line 57
    iput-object p1, p0, Lgoo;->g:Landroid/app/Activity;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;Lcom/santander/app/widget/Indicator;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lfom;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lgoo;->o:Lnez;

    .line 65
    iput-object p2, p0, Lgoo;->b:Landroid/support/v4/view/ViewPager;

    .line 66
    iput-object p4, p0, Lgoo;->a:Landroid/widget/ImageView;

    .line 67
    iput-object p5, p0, Lgoo;->c:Landroid/widget/ImageView;

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lgoo;->d:I

    .line 69
    iput-object p3, p0, Lgoo;->e:Lcom/santander/app/widget/Indicator;

    .line 70
    iput-object p1, p0, Lgoo;->g:Landroid/app/Activity;

    .line 72
    iput-object p6, p0, Lgoo;->h:Landroid/widget/Spinner;

    .line 73
    iput-object p7, p0, Lgoo;->i:Landroid/widget/Spinner;

    .line 74
    iput-object p8, p0, Lgoo;->j:Landroid/widget/EditText;

    .line 75
    iput-object p9, p0, Lgoo;->k:Landroid/widget/EditText;

    .line 76
    iput-object p10, p0, Lgoo;->l:Landroid/widget/EditText;

    .line 77
    iput-object p11, p0, Lgoo;->m:Landroid/widget/CheckBox;

    .line 78
    iput-object p12, p0, Lgoo;->n:Landroid/widget/CheckBox;

    .line 80
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lgoo;->b:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 155
    iput p1, p0, Lgoo;->d:I

    .line 156
    return-void
.end method

.method public a(Landroid/support/v4/view/ViewPager;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lgoo;->b:Landroid/support/v4/view/ViewPager;

    .line 132
    return-void
.end method

.method public a(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lgoo;->a:Landroid/widget/ImageView;

    .line 140
    return-void
.end method

.method public a(Lcom/santander/app/widget/Indicator;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lgoo;->e:Lcom/santander/app/widget/Indicator;

    .line 164
    return-void
.end method

.method public a(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lfuu;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 90
    iput-object p1, p0, Lgoo;->f:Ljava/util/List;

    .line 92
    new-instance v0, Lfps;

    iget-object v1, p0, Lgoo;->g:Landroid/app/Activity;

    iget-object v2, p0, Lgoo;->f:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lfps;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 94
    iget-object v1, p0, Lgoo;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 95
    iget-object v1, p0, Lgoo;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 96
    iget-object v1, p0, Lgoo;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 97
    iget-object v1, p0, Lgoo;->e:Lcom/santander/app/widget/Indicator;

    invoke-virtual {v0}, Lfps;->getCount()I

    move-result v0

    iget-object v2, p0, Lgoo;->c:Landroid/widget/ImageView;

    iget-object v3, p0, Lgoo;->a:Landroid/widget/ImageView;

    iget-object v4, p0, Lgoo;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v1, v0, v2, v3, v4}, Lgpm;->a(Lcom/santander/app/widget/Indicator;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/support/v4/view/ViewPager;)V

    .line 98
    invoke-virtual {p0, p2}, Lgoo;->onPageSelected(I)V

    .line 99
    return-void
.end method

.method public a(Ljava/util/Vector;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lfuu;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 187
    iput-object p1, p0, Lgoo;->f:Ljava/util/List;

    .line 189
    new-instance v0, Lfol;

    iget-object v1, p0, Lgoo;->g:Landroid/app/Activity;

    iget-object v2, p0, Lgoo;->f:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lfol;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 191
    iget-object v1, p0, Lgoo;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 192
    iget-object v1, p0, Lgoo;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 193
    iget-object v1, p0, Lgoo;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 194
    iget-object v1, p0, Lgoo;->e:Lcom/santander/app/widget/Indicator;

    invoke-virtual {v0}, Lfol;->getCount()I

    move-result v0

    iget-object v2, p0, Lgoo;->c:Landroid/widget/ImageView;

    iget-object v3, p0, Lgoo;->a:Landroid/widget/ImageView;

    iget-object v4, p0, Lgoo;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v1, v0, v2, v3, v4}, Lgpm;->a(Lcom/santander/app/widget/Indicator;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/support/v4/view/ViewPager;)V

    .line 195
    invoke-virtual {p0, p2}, Lgoo;->onPageSelected(I)V

    .line 196
    return-void
.end method

.method public a(Lnez;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lgoo;->o:Lnez;

    .line 170
    return-void
.end method

.method public b()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lgoo;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public b(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lgoo;->c:Landroid/widget/ImageView;

    .line 148
    return-void
.end method

.method public c()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lgoo;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lgoo;->d:I

    return v0
.end method

.method public e()Lcom/santander/app/widget/Indicator;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lgoo;->e:Lcom/santander/app/widget/Indicator;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6

    .prologue
    .line 116
    iget-object v0, p0, Lgoo;->b:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lgoo;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lgoo;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lgoo;->e:Lcom/santander/app/widget/Indicator;

    iget-object v5, p0, Lgoo;->g:Landroid/app/Activity;

    move v4, p1

    invoke-static/range {v0 .. v5}, Lgpm;->a(Landroid/support/v4/view/ViewPager;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/santander/app/widget/Indicator;ILandroid/app/Activity;)V

    .line 117
    iget-object v0, p0, Lgoo;->o:Lnez;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lgoo;->o:Lnez;

    invoke-interface {v0, p1}, Lnez;->b(I)V

    .line 124
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhau;->b(I)V

    goto :goto_0
.end method
