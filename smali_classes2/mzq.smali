.class public Lmzq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmzq;->a:Ljava/util/Set;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmzq;->b:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/widget/AutoCompleteTextView;)V
    .locals 3

    .prologue
    .line 129
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 131
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 132
    return-void
.end method

.method public static a(Landroid/app/Activity;Z)V
    .locals 8

    .prologue
    const/16 v7, 0x9

    const/16 v6, 0x8

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 140
    if-eqz p0, :cond_0

    sget-object v0, Lmzq;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 146
    sget-object v0, Lmzq;->b:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    const-string v0, "window"

    .line 152
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 153
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 154
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 155
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 158
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v5, :cond_2

    if-eqz v0, :cond_3

    if-eq v0, v5, :cond_3

    :cond_2
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_4

    if-eq v0, v3, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 163
    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 196
    :goto_1
    if-eqz p1, :cond_0

    .line 197
    sget-object v0, Lmzq;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 165
    :pswitch_0
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 168
    :pswitch_1
    invoke-virtual {p0, v7}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 171
    :pswitch_2
    invoke-virtual {p0, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 174
    :pswitch_3
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 179
    :cond_4
    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 181
    :pswitch_4
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 184
    :pswitch_5
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 187
    :pswitch_6
    invoke-virtual {p0, v7}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 190
    :pswitch_7
    invoke-virtual {p0, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 179
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static a(Landroid/support/v4/app/Fragment;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x1

    .line 49
    .line 50
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 54
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 57
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_0

    .line 92
    :goto_1
    return-void

    .line 63
    :pswitch_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v2, :cond_1

    .line 64
    invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 68
    if-eq v1, v3, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 70
    :cond_2
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 72
    :cond_3
    invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 78
    :pswitch_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v2, :cond_4

    .line 79
    invoke-virtual {v0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 81
    :cond_4
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 83
    if-eqz v1, :cond_5

    if-ne v1, v3, :cond_6

    .line 85
    :cond_5
    invoke-virtual {v0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 87
    :cond_6
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lmzq;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 114
    const-string v0, "input_method"

    .line 115
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 118
    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 120
    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 126
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;Z)V
    .locals 1

    .prologue
    .line 208
    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lmzq;->b:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    sget-object v0, Lmzq;->a:Ljava/util/Set;

    .line 209
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 214
    if-eqz p1, :cond_0

    .line 215
    sget-object v0, Lmzq;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 98
    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 102
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 103
    :catch_0
    move-exception v0

    .line 105
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 108
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public static c(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lmzq;->a(Landroid/app/Activity;Z)V

    .line 136
    return-void
.end method

.method public static d(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lmzq;->b(Landroid/app/Activity;Z)V

    .line 203
    return-void
.end method
