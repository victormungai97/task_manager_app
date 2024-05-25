// pages/login/form.dart

part of 'login.dart';

class _Form extends HookWidget {
  const _Form() : super(key: const ValueKey('LoginForm'));

  @override
  Widget build(BuildContext context) {
    final obscureVal = useState(true);
    FormGroup buildForm() => fb.group(
          <String, Object>{
            LoginRequestKeys.username: FormControl<String>(
              validators: [Validators.required],
            ),
            LoginRequestKeys.password: FormControl<String>(
              validators: [Validators.required, Validators.minLength(8)],
            ),
          },
        );
    final size = MediaQuery.sizeOf(context);

    return ReactiveFormBuilder(
      form: buildForm,
      builder: (context, form, child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //username
            Container(
              width: size.width - 16,
              margin: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 8,
              ),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.45),
                borderRadius: const BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              height: 65,
              child: HiveListenableBuilder<Object?>(
                box: Hive.box('app_data'),
                builder: (box, child) {
                  final usernames = box.get(
                    LocalDatabaseKeys.usernames,
                  ) as List<String>?;

                  if (usernames == null || usernames.isEmpty) {
                    return ReactiveTextField<String>(
                      validationMessages: {
                        ValidationMessage.required: (_) => Messages.no_username,
                      },
                      formControlName: LoginRequestKeys.username,
                      keyboardType: TextInputType.text,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF660704),
                      ),
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(16, 14, 3, 24),
                        prefixIcon: Icon(Icons.person, color: Colors.black),
                        labelStyle: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                        ),
                        errorStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xffba1a1a),
                        ),
                        label: Text(Labels.username),
                        border: InputBorder.none,
                      ),
                      textInputAction: TextInputAction.next,
                      textAlign: TextAlign.center,
                    );
                  }

                  return ReactiveTypeAhead<String, String>(
                    stringify: (_) => _,
                    formControlName: LoginRequestKeys.username,
                    suggestionsCallback: (pattern) async {
                      final query = pattern;
                      return <String>[...usernames]..retainWhere(
                          (s) => s.toLowerCase().contains(query.toLowerCase()),
                        );
                    },
                    itemBuilder: (context, suggestion) {
                      return ListTile(
                        leading: const Icon(Icons.person_outlined),
                        title: Text(suggestion),
                      );
                    },
                    validationMessages: {
                      ValidationMessage.required: (_) => Messages.no_username,
                    },
                    keyboardType: TextInputType.text,
                    textFieldConfiguration: const TextFieldConfiguration(
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF660704),
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(16, 14, 3, 24),
                        prefixIcon: Icon(Icons.mail, color: Colors.black),
                        labelStyle: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                        ),
                        errorStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xffba1a1a),
                        ),
                        label: Text(Labels.username),
                        border: InputBorder.none,
                      ),
                    ),
                    textInputAction: TextInputAction.next,
                    textAlign: TextAlign.center,
                  );
                },
              ),
            ),
            //password
            Container(
              width: size.width - 16,
              margin: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 8,
              ),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.45),
                borderRadius: const BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              height: 65,
              child: ReactiveTextField<String>(
                formControlName: LoginRequestKeys.password,
                keyboardType: TextInputType.visiblePassword,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF660704),
                ),
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.password, color: Colors.black),
                  labelStyle: const TextStyle(
                    color: Colors.black87,
                    fontSize: 16,
                  ),
                  contentPadding: const EdgeInsets.fromLTRB(16, 14, 3, 24),
                  errorStyle: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xffba1a1a),
                  ),
                  label: const Text(Labels.password),
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                    onPressed: () => obscureVal.value = !obscureVal.value,
                    icon: ValueListenableBuilder(
                      builder: (context, value, child) {
                        return switch (value) {
                          true => const Icon(Icons.visibility_rounded),
                          false => const Icon(Icons.visibility_off_rounded),
                        };
                      },
                      valueListenable: obscureVal,
                    ),
                    color: Colors.black,
                  ),
                ),
                textAlign: TextAlign.center,
                obscureText: obscureVal.value,
                validationMessages: {
                  ValidationMessage.required: (_) => Messages.empty_password,
                  ValidationMessage.minLength: (_) => Messages.short_password,
                },
              ),
            ),
            //submit
            Center(
              child: ElevatedButton.icon(
                icon: const Icon(Icons.login),
                onPressed: () async {
                  if (!form.valid) {
                    form.markAllAsTouched();
                    return;
                  }
                  final details = Map<String, String?>.from(form.value);
                  context.read<LoginBloc>().add(
                        LoginEvent.userLoggedIn(
                          (
                            username: details[LoginRequestKeys.username] ?? '',
                            password: details[LoginRequestKeys.password] ?? '',
                          ),
                        ),
                      );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF680212),
                  textStyle: const TextStyle(fontSize: 18),
                  foregroundColor: Colors.white,
                  shape: const StadiumBorder(),
                  fixedSize: const Size(250, 55),
                ),
                label: const Text(Labels.login),
              ),
            ),
          ],
        );
      },
    );
  }
}
