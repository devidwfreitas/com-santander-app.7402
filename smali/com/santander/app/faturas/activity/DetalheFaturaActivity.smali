.class public Lcom/santander/app/faturas/activity/DetalheFaturaActivity;
.super Lgrs;
.source "SourceFile"


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/Button;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/TextView;

.field private L:Landroid/widget/Button;

.field private M:Landroid/os/Bundle;

.field private N:Landroid/os/Bundle;

.field private O:Z

.field private P:Lfue;

.field private Q:Landroid/widget/LinearLayout;

.field private R:Landroid/widget/LinearLayout;

.field private S:Landroid/app/Dialog;

.field private T:Ljava/lang/String;

.field private U:Liea;

.field private V:Landroid/app/Activity;

.field private W:Lghu;

.field private X:Landroid/widget/LinearLayout;

.field private Y:Landroid/widget/ImageView;

.field private Z:Z

.field public a:Landroid/app/Dialog;

.field private aa:Landroid/os/Bundle;

.field private final b:Ljava/lang/String;

.field private c:Lgon;

.field private d:Landroid/support/v4/view/ViewPager;

.field private e:Lcom/santander/app/widget/Indicator;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private w:I

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 50
    const-string v0, "DetalheFaturaActivity"

    iput-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->b:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->d:Landroid/support/v4/view/ViewPager;

    .line 54
    iput-object v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->e:Lcom/santander/app/widget/Indicator;

    .line 55
    iput-object v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->f:Landroid/widget/ImageView;

    .line 56
    iput-object v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->g:Landroid/widget/ImageView;

    .line 92
    iput-object v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->a:Landroid/app/Dialog;

    .line 96
    iput-object v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->Y:Landroid/widget/ImageView;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->Z:Z

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/faturas/activity/DetalheFaturaActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->S:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/faturas/activity/DetalheFaturaActivity;Lghu;)Lghu;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->W:Lghu;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/faturas/activity/DetalheFaturaActivity;Liea;)Liea;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->U:Liea;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/faturas/activity/DetalheFaturaActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->T:Ljava/lang/String;

    return-object p1
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 130
    if-eqz p1, :cond_1

    const/16 v0, 0x8

    .line 132
    :goto_0
    const v1, 0x7f100b26

    invoke-virtual {p0, v1}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 133
    const v1, 0x7f100b2a

    invoke-virtual {p0, v1}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 134
    const v1, 0x7f100b2e

    invoke-virtual {p0, v1}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 135
    const v1, 0x7f100b32

    invoke-virtual {p0, v1}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 136
    const v1, 0x7f100b36

    invoke-virtual {p0, v1}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 137
    const v1, 0x7f100b3d

    invoke-virtual {p0, v1}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 138
    const v1, 0x7f100b3e

    invoke-virtual {p0, v1}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 139
    const v1, 0x7f100b29

    invoke-virtual {p0, v1}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 140
    const v1, 0x7f100b31

    invoke-virtual {p0, v1}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 141
    const v1, 0x7f100b35

    invoke-virtual {p0, v1}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 142
    const v1, 0x7f100b39

    invoke-virtual {p0, v1}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 143
    const v1, 0x7f100b2d

    invoke-virtual {p0, v1}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-boolean v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->O:Z

    if-eqz v1, :cond_0

    .line 146
    const v1, 0x7f100b19

    invoke-virtual {p0, v1}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 149
    :cond_0
    return-void

    .line 130
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static final a(Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 521
    if-nez p0, :cond_0

    .line 522
    const/4 v0, 0x0

    .line 524
    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method

.method public static synthetic b(Lcom/santander/app/faturas/activity/DetalheFaturaActivity;)Liea;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->U:Liea;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    const v5, 0x7f100b34

    const v4, 0x7f100b2c

    const v3, 0x7f100b28

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 153
    const v0, 0x7f1006fb

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->Q:Landroid/widget/LinearLayout;

    .line 154
    const v0, 0x7f1006fd

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->R:Landroid/widget/LinearLayout;

    .line 156
    const v0, 0x7f1006b2

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->d:Landroid/support/v4/view/ViewPager;

    .line 157
    const v0, 0x7f1006b5

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Indicator;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->e:Lcom/santander/app/widget/Indicator;

    .line 158
    const v0, 0x7f1006b3

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->g:Landroid/widget/ImageView;

    .line 159
    const v0, 0x7f1006b4

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->f:Landroid/widget/ImageView;

    .line 161
    const v0, 0x7f100b17

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->x:Landroid/widget/TextView;

    .line 162
    const v0, 0x7f100b1b

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->y:Landroid/widget/TextView;

    .line 164
    invoke-virtual {p0, v3}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->G:Landroid/widget/TextView;

    .line 165
    invoke-virtual {p0, v4}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->H:Landroid/widget/TextView;

    .line 166
    invoke-virtual {p0, v5}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->I:Landroid/widget/TextView;

    .line 167
    const v0, 0x7f100b38

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->J:Landroid/widget/TextView;

    .line 168
    const v0, 0x7f100b3e

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->L:Landroid/widget/Button;

    .line 170
    const v0, 0x7f100b24

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->z:Landroid/widget/TextView;

    .line 171
    invoke-virtual {p0, v3}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->A:Landroid/widget/TextView;

    .line 172
    invoke-virtual {p0, v4}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->C:Landroid/widget/TextView;

    .line 173
    const v0, 0x7f100b2f

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->B:Landroid/widget/TextView;

    .line 174
    const v0, 0x7f100b2e

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->X:Landroid/widget/LinearLayout;

    .line 175
    invoke-virtual {p0, v5}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->D:Landroid/widget/TextView;

    .line 176
    const v0, 0x7f100b38

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->E:Landroid/widget/TextView;

    .line 177
    const v0, 0x7f100b3e

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->F:Landroid/widget/Button;

    .line 179
    invoke-direct {p0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->c()V

    .line 181
    iget-boolean v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->O:Z

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->Q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->R:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 185
    invoke-direct {p0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->e()V

    .line 203
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->Q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->R:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 192
    invoke-direct {p0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->d()V

    .line 194
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->F:Landroid/widget/Button;

    new-instance v1, Lidw;

    invoke-direct {v1, p0}, Lidw;-><init>(Lcom/santander/app/faturas/activity/DetalheFaturaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public static synthetic c(Lcom/santander/app/faturas/activity/DetalheFaturaActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->V:Landroid/app/Activity;

    return-object v0
.end method

.method private c()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 207
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->d:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lidx;

    invoke-direct {v1, p0}, Lidx;-><init>(Lcom/santander/app/faturas/activity/DetalheFaturaActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 222
    const v0, 0x7f1006b5

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Indicator;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->e:Lcom/santander/app/widget/Indicator;

    .line 223
    const v0, 0x7f1006b3

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->g:Landroid/widget/ImageView;

    .line 224
    const v0, 0x7f1006b4

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->f:Landroid/widget/ImageView;

    .line 226
    new-instance v0, Lgon;

    iget-object v2, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->d:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->e:Lcom/santander/app/widget/Indicator;

    iget-object v4, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->g:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->f:Landroid/widget/ImageView;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lgon;-><init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;Lcom/santander/app/widget/Indicator;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V

    iput-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->c:Lgon;

    .line 229
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->c:Lgon;

    iget v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->w:I

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgon;->a(ILjava/lang/Boolean;)V

    .line 231
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->c:Lgon;

    invoke-virtual {v0}, Lgon;->a()I

    move-result v0

    iput v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->w:I

    .line 233
    return-void
.end method

.method public static synthetic d(Lcom/santander/app/faturas/activity/DetalheFaturaActivity;)Lgon;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->c:Lgon;

    return-object v0
.end method

.method private d()V
    .locals 13

    .prologue
    const/16 v3, 0x8

    const/4 v12, 0x1

    const/high16 v11, 0x41500000    # 13.0f

    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 237
    iget-object v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->z:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v0}, Lfue;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v0}, Lfue;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v0}, Lfue;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 240
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->A:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v1}, Lfue;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :goto_1
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v0}, Lfue;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 245
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->C:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v1}, Lfue;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :goto_2
    const v0, 0x7f100b2d

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->Y:Landroid/widget/ImageView;

    .line 252
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->Y:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->X:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v0}, Lfue;->V()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 256
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->B:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v1}, Lfue;->V()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->B:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R$ 0,00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->X:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->Y:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    :cond_0
    :goto_3
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v0}, Lfue;->q()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 266
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->D:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v1}, Lfue;->q()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :goto_4
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v0}, Lfue;->p()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 271
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->E:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v1}, Lfue;->p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :goto_5
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v0}, Lfue;->e()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v0}, Lfue;->e()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_e

    .line 276
    const v0, 0x7f100b3f

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 277
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 279
    invoke-virtual {p0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    move v5, v6

    .line 285
    :goto_6
    iget-object v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v1}, Lfue;->e()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v5, v1, :cond_d

    .line 286
    const v1, 0x7f040304

    invoke-virtual {v7, v1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 287
    const v1, 0x7f100fbf

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    .line 288
    const v1, 0x7f100fc1

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/TextView;

    .line 290
    iget-object v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v1}, Lfue;->e()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfuj;

    invoke-virtual {v1}, Lfuj;->b()Ljava/lang/String;

    move-result-object v1

    const-string v4, "01/01/0001"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 291
    iget-object v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v1}, Lfue;->e()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfuj;

    invoke-virtual {v1}, Lfuj;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    :goto_7
    const v1, -0x777778

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 296
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 298
    const v1, 0x7f100fc0

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    .line 299
    iget-object v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v1}, Lfue;->e()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfuj;

    invoke-virtual {v1}, Lfuj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 302
    iget-object v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v1}, Lfue;->e()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfuj;

    invoke-virtual {v1}, Lfuj;->a()Ljava/lang/String;

    move-result-object v1

    const-string v9, "SUBTOTAL"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    invoke-virtual {v4, v10, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 304
    invoke-virtual {v3, v10, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 305
    const/16 v1, 0x28

    invoke-virtual {v3, v6, v1, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 306
    const-string v1, ""

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    :cond_1
    iget-object v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v1}, Lfue;->e()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfuj;

    invoke-virtual {v1}, Lfuj;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 310
    iget-object v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v1}, Lfue;->e()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfuj;

    invoke-virtual {v1}, Lfuj;->d()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    .line 311
    iget-object v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v1}, Lfue;->e()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfuj;

    invoke-virtual {v1}, Lfuj;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-static {v3, v1, v2}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :goto_8
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 321
    iget-object v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v1}, Lfue;->e()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfuj;

    invoke-virtual {v1}, Lfuj;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SUBTOTAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->Z:Z

    if-nez v1, :cond_3

    .line 322
    :cond_2
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 285
    :cond_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto/16 :goto_6

    .line 237
    :cond_4
    const-string v0, ""

    goto/16 :goto_0

    .line 242
    :cond_5
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->A:Landroid/widget/TextView;

    const-string v1, "R$0,00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 247
    :cond_6
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->C:Landroid/widget/TextView;

    const-string v1, "R$0,00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 262
    :cond_7
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->B:Landroid/widget/TextView;

    const-string v1, "R$0,00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 268
    :cond_8
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->D:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 273
    :cond_9
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->E:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 293
    :cond_a
    invoke-virtual {p0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0908fa

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 313
    :cond_b
    iget-object v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v1}, Lfue;->e()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfuj;

    invoke-virtual {v1}, Lfuj;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v1}, Lfue;->e()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfuj;

    invoke-virtual {v1}, Lfuj;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 316
    :cond_c
    const-string v1, "R$0,00"

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 327
    :cond_d
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v0}, Lfue;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v0}, Lfue;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    .line 328
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->V:Landroid/app/Activity;

    iget-object v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v1}, Lfue;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhav;->c(Landroid/app/Activity;Ljava/lang/String;)V

    .line 332
    :cond_e
    return-void
.end method

.method public static synthetic e(Lcom/santander/app/faturas/activity/DetalheFaturaActivity;)Lfue;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    return-object v0
.end method

.method private e()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/high16 v11, 0x41500000    # 13.0f

    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 336
    iget-object v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->x:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v0}, Lfue;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v0}, Lfue;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v0}, Lfue;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 339
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v1}, Lfue;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :goto_1
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v0}, Lfue;->e()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v0}, Lfue;->e()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_9

    .line 344
    const v0, 0x7f100b1f

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 345
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 348
    invoke-virtual {p0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    move v5, v6

    .line 354
    :goto_2
    iget-object v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v1}, Lfue;->e()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v5, v1, :cond_8

    .line 355
    const v1, 0x7f040304

    invoke-virtual {v7, v1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 356
    const v1, 0x7f100fbf

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    .line 357
    const v1, 0x7f100fc1

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/TextView;

    .line 359
    iget-object v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v1}, Lfue;->e()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfuj;

    invoke-virtual {v1}, Lfuj;->b()Ljava/lang/String;

    move-result-object v1

    const-string v4, "01/01/0001"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 360
    iget-object v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v1}, Lfue;->e()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfuj;

    invoke-virtual {v1}, Lfuj;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    :goto_3
    const v1, -0x777778

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 365
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 367
    const v1, 0x7f100fc0

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    .line 368
    iget-object v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v1}, Lfue;->e()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfuj;

    invoke-virtual {v1}, Lfuj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 371
    iget-object v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v1}, Lfue;->e()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfuj;

    invoke-virtual {v1}, Lfuj;->a()Ljava/lang/String;

    move-result-object v1

    const-string v9, "SUBTOTAL"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    invoke-virtual {v4, v10, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 373
    invoke-virtual {v3, v10, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 374
    const/16 v1, 0x14

    invoke-virtual {v3, v6, v1, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 375
    const-string v1, ""

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    :cond_0
    iget-object v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v1}, Lfue;->e()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfuj;

    invoke-virtual {v1}, Lfuj;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 379
    iget-object v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v1}, Lfue;->e()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfuj;

    invoke-virtual {v1}, Lfuj;->d()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    .line 380
    iget-object v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v1}, Lfue;->e()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfuj;

    invoke-virtual {v1}, Lfuj;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-static {v3, v1, v2}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :goto_4
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 390
    iget-object v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v1}, Lfue;->e()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfuj;

    invoke-virtual {v1}, Lfuj;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SUBTOTAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->Z:Z

    if-nez v1, :cond_2

    .line 391
    :cond_1
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 354
    :cond_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto/16 :goto_2

    .line 336
    :cond_3
    const-string v0, ""

    goto/16 :goto_0

    .line 341
    :cond_4
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->y:Landroid/widget/TextView;

    const-string v1, "R$0,00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 362
    :cond_5
    invoke-virtual {p0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0908fa

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 382
    :cond_6
    iget-object v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v1}, Lfue;->e()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfuj;

    invoke-virtual {v1}, Lfuj;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v1}, Lfue;->e()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfuj;

    invoke-virtual {v1}, Lfuj;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 385
    :cond_7
    const-string v1, "R$0,00"

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 396
    :cond_8
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v0}, Lfue;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v0}, Lfue;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 397
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->V:Landroid/app/Activity;

    iget-object v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    invoke-virtual {v1}, Lfue;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhav;->c(Landroid/app/Activity;Ljava/lang/String;)V

    .line 401
    :cond_9
    return-void
.end method

.method public static synthetic f(Lcom/santander/app/faturas/activity/DetalheFaturaActivity;)Lghu;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->W:Lghu;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 405
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->N:Landroid/os/Bundle;

    .line 406
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->N:Landroid/os/Bundle;

    const-string v1, "isFaturaAberta"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->O:Z

    .line 407
    return-void
.end method

.method public static synthetic g(Lcom/santander/app/faturas/activity/DetalheFaturaActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->T:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 411
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->M:Landroid/os/Bundle;

    .line 412
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->M:Landroid/os/Bundle;

    const-string v1, "EXTRACARTAO"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->w:I

    .line 413
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 417
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->M:Landroid/os/Bundle;

    .line 418
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->M:Landroid/os/Bundle;

    const-string v1, "EXTRADADOS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfue;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->P:Lfue;

    .line 419
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->aa:Landroid/os/Bundle;

    .line 424
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->N:Landroid/os/Bundle;

    const-string v1, "ISADICIONAL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->Z:Z

    .line 425
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 429
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->V:Landroid/app/Activity;

    const v2, 0x7f0b0224

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->S:Landroid/app/Dialog;

    .line 430
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->S:Landroid/app/Dialog;

    const v1, 0x7f0401c6

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 432
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->S:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x7f0b021e

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 435
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->S:Landroid/app/Dialog;

    const v1, 0x7f1008a5

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 436
    new-instance v1, Lidy;

    invoke-direct {v1, p0}, Lidy;-><init>(Lcom/santander/app/faturas/activity/DetalheFaturaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    iget-object v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->S:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 460
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const v0, 0x7f040164

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->setContentView(I)V

    .line 107
    invoke-virtual {p0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 108
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 109
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 110
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 112
    const-string v1, "Lan\u00e7amentos da Fatura"

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 114
    iput-object p0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->V:Landroid/app/Activity;

    .line 116
    invoke-direct {p0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->g()V

    .line 117
    invoke-direct {p0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->f()V

    .line 119
    invoke-direct {p0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->h()V

    .line 121
    invoke-direct {p0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->i()V

    .line 123
    invoke-direct {p0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->b()V

    .line 125
    iget-boolean v0, p0, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->Z:Z

    invoke-direct {p0, v0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->a(Z)V

    .line 127
    return-void
.end method
