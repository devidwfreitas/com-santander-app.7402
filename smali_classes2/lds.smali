.class public Llds;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/RadioButton;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/widget/RadioButton;

.field private g:Landroid/widget/Button;

.field private h:Lldx;

.field private i:Ljava/util/Calendar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Llds;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Llds;->d:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public static a()Llds;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Llds;

    invoke-direct {v0}, Llds;-><init>()V

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 60
    const v0, 0x7f1009e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Llds;->b:Landroid/widget/LinearLayout;

    .line 61
    const v0, 0x7f1009e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Llds;->c:Landroid/widget/RelativeLayout;

    .line 62
    const v0, 0x7f100439

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Llds;->d:Landroid/widget/RadioButton;

    .line 63
    const v0, 0x7f1009e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Llds;->e:Landroid/widget/RelativeLayout;

    .line 64
    const v0, 0x7f1009e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Llds;->f:Landroid/widget/RadioButton;

    .line 65
    const v0, 0x7f1009df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Llds;->a:Landroid/widget/EditText;

    .line 66
    const v0, 0x7f10093d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llds;->g:Landroid/widget/Button;

    .line 67
    return-void
.end method

.method static synthetic b(Llds;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Llds;->f:Landroid/widget/RadioButton;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Llds;->g:Landroid/widget/Button;

    invoke-static {v0}, Lmhj;->d(Landroid/view/View;)V

    .line 72
    iget-object v0, p0, Llds;->a:Landroid/widget/EditText;

    new-instance v1, Lldt;

    invoke-direct {v1, p0}, Lldt;-><init>(Llds;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    new-instance v0, Lldu;

    invoke-direct {v0, p0}, Lldu;-><init>(Llds;)V

    .line 96
    iget-object v1, p0, Llds;->d:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v1, p0, Llds;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    new-instance v0, Lldv;

    invoke-direct {v0, p0}, Lldv;-><init>(Llds;)V

    .line 109
    iget-object v1, p0, Llds;->f:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v1, p0, Llds;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Llds;->g:Landroid/widget/Button;

    new-instance v1, Lldw;

    invoke-direct {v1, p0}, Lldw;-><init>(Llds;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    return-void
.end method

.method static synthetic c(Llds;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Llds;->g:Landroid/widget/Button;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0xb

    const/4 v2, 0x0

    .line 125
    iget-object v0, p0, Llds;->d:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Llds;->i:Ljava/util/Calendar;

    const/16 v1, 0xa

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 131
    :goto_0
    iget-object v0, p0, Llds;->i:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 132
    iget-object v0, p0, Llds;->i:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 134
    iget-object v0, p0, Llds;->i:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-static {v0, v1}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 128
    :cond_0
    iget-object v0, p0, Llds;->i:Ljava/util/Calendar;

    const/16 v1, 0xe

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
.end method

.method private d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Llds;->d:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const v0, 0x7f090775

    invoke-virtual {p0, v0}, Llds;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    :goto_0
    iget-object v1, p0, Llds;->i:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    const-string v2, "dd/MM/yyyy"

    invoke-static {v1, v2}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 142
    :cond_0
    const v0, 0x7f090471

    invoke-virtual {p0, v0}, Llds;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic d(Llds;)Lldx;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Llds;->h:Lldx;

    return-object v0
.end method

.method static synthetic e(Llds;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Llds;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Llds;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Llds;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lldx;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Llds;->h:Lldx;

    .line 168
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 51
    const v0, 0x7f0401fc

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 53
    invoke-direct {p0, v0}, Llds;->a(Landroid/view/View;)V

    .line 54
    invoke-direct {p0}, Llds;->b()V

    .line 56
    return-object v0
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 3

    .prologue
    .line 152
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 153
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 154
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 155
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 157
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lmhj;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 159
    iget-object v2, p0, Llds;->a:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iput-object v0, p0, Llds;->i:Ljava/util/Calendar;

    .line 163
    iget-object v0, p0, Llds;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 164
    return-void
.end method
